package moimmoimProject.controller.moimController;

import lombok.AllArgsConstructor;
import moimmoimProject.domain.moimDomain.Criteria;
import moimmoimProject.domain.moimDomain.LocationDo;
import moimmoimProject.domain.moimDomain.MoimDo;
import moimmoimProject.domain.moimDomain.Paging;
import moimmoimProject.service.MoimService;
import org.apache.ibatis.annotations.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;
import java.util.Map;

@Controller
@AllArgsConstructor
public class MoimController {

    private final MoimService moimService;

    @GetMapping("/moim")
    public String hello() {
        return "moimService/index";
    }   // 테스트 용

    @GetMapping("/moim/new")
    public String moimForm() {
        return "moimService/moimWrite";
    }   // 모임 생성 페이지로 이동

    @GetMapping("/moim/getMoim/list")    // 모임 리스트
    public String moimList(@Param("moimCategoryNum") Long moimCategoryNum, Model model, Criteria cri) {
        if(moimCategoryNum==null) moimCategoryNum = 1L;     // 카테고리 default 값

        // 이게 int 이여야 함
        int moimListCnt = moimService.moimListCnt(moimCategoryNum);
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(moimListCnt);

        List<Map<String, Object>> list = moimService.moimList(cri,moimCategoryNum);
        List<LocationDo> locList = moimService.getLocList(list);

        model.addAttribute("moimCategoryNum",moimCategoryNum);      // 페이징 용
        model.addAttribute("locList",locList);                      // 지역 리스트
        model.addAttribute("list", list);                           // 모임 리스트
        model.addAttribute("paging", paging);                       // 페이징 정보
        return "moimService/list";
    }
    @PostMapping("moim/getMoim/{moimHostUserIdNum}")    // 모임 넘버로 모임을 찾음
    public String findMoimByUserId(@PathVariable("moimHostUserIdNum") Long userNum, Model model){
        List<MoimDo> MoimList= moimService.getMoimByUserIdNum(userNum);
        model.addAttribute("moimList", MoimList);
        return "";  // 페이지 삽입해야함
    }
    @GetMapping("moim/getMoim/getMoim")    // 유저 넘버로 모임 리스트를 찾음
    public String findMoimByMoimNum(@Param("moimNum") Long moimNum, Model model){
        MoimDo moimDo = moimService.getMoimByMoimNum(moimNum);                          // 해당 모임 반환
        LocationDo locationDo = moimService.findLocName(moimDo);                        // 해당 모임 location 반환
        String category = moimService.getCatName(moimDo.getMoimCategoryNum());          // 카테고리 이름 반환
        moimService.CountView(moimNum);                                                 // 조회수 증가

        model.addAttribute("category", category);
        model.addAttribute("locationDo", locationDo);
        model.addAttribute("moimDo", moimDo);
        return "moimService/detailMoim";  // 페이지 삽입해야함
    }

    @PostMapping("/moim/new")               // 새로운 모임 생성
    public String createNewMoim(@Param("MoimDo") MoimDo moimDo){
        moimService.createMoim(moimDo);
        return "moimService/index";
    }

    @GetMapping("/moim/count/{moimNum}")          // 조회수 카운트
    public void countView(@PathVariable("moimNum") Long moimNum){
        moimService.CountView(moimNum);
    }

    @PostMapping("uploadFormAction")
    public String uploadFormPost(MultipartFile[] uploadFile, Model model) {
        String uploadFolder="C:\\upload";
        for (MultipartFile multipartFile : uploadFile) {

            File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());

            try{
                multipartFile.transferTo(saveFile);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return "moimService/index";
    }

}
