package net.thucydides.core.scheduling;

import org.openqa.selenium.support.ui.Clock;
import org.openqa.selenium.support.ui.Sleeper;
import org.openqa.selenium.support.ui.SystemClock;

public class NormalFluentWait<T> extends ThucydidesFluentWait<T> {

    public NormalFluentWait(T input) {
        super(input, new SystemClock(), Sleeper.SYSTEM_SLEEPER);
    }

    public NormalFluentWait(T input, Clock clock, Sleeper sleeper) {
        super(input, clock, sleeper);
    }

    @Override
    public void doWait() throws InterruptedException {
        getSleeper().sleep(interval);
    }
}