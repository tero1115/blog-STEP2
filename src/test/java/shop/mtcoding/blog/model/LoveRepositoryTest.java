package shop.mtcoding.blog.model;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;

@MybatisTest
public class LoveRepositoryTest {

    @Autowired
    private LoveRepository loveRepository;

    @Test
    public void findByBoardIdAndUserId_test() throws Exception {
        // given
        int boardId = 1;
        int userId = 1;

        // ObjectMapper는 Timestamp 파싱을 못함
        ObjectMapper om = new ObjectMapper(); // Jackson

        // when
        Love lovePS = loveRepository.findByBoardIdAndUserId(boardId, userId);
        // String responsBody = om.writeValueAsString(lovePS);
        // System.out.println("테스트 : " + responsBody);

        // then
        assertThat(lovePS.getBoardId()).isEqualTo(1);
        assertThat(lovePS.getUserId()).isEqualTo(1);
    }
}
