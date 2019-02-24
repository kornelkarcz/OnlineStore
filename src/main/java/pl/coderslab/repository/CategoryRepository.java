package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

    @Query("update Category category set category.name = ?1 where category.id = ?2")
    void editCategory(String name, Long id);

}
