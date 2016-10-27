package net.yihuineng.framework.tablebind;

import java.lang.annotation.*;

@Inherited
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface TableBind {
    String tableName();

    String pkName() default "";
}
