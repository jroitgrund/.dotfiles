package foo;

import io.dropwizard.Application;
import io.dropwizard.Configuration;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

public class Foo extends Application<Configuration> {
    public static void main(String[] args) throws Exception {
        new Foo().run(args);
    }

    @Override
    public void run(Configuration configuration, Environment environment) {
    }
}
