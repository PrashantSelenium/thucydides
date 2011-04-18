package net.thucydides.easyb.samples

import net.thucydides.easyb.samples.pages.IndexPage
import net.thucydides.easyb.samples.pages.DemoSiteSteps;

using "thucydides"

thucydides.uses_default_base_url "classpath:demosite/index.html"
thucydides.uses_steps_from DemoSiteSteps
thucydides.use_new_broswer_for_each_scenario()

scenario "Select entry in dropdown list", {
    given "we are on the Thucydides demo site", {
    }
    when "the user fills in the form", {
        demo_site.enter_values('Label 3', true)
    }
    then "the chosen options should be displayed", {
        demo_site.should_have_selected_value '3'
    }
}

scenario "Select another entry in dropdown list on the same page", {
    given "we are still on the Thucydides demo site", {
    }
    when "the user fills in the form", {
        demo_site.enter_values('Label 2', true)
    }
    then "the new chosen option should be displayed", {
        demo_site.should_have_selected_value '2'
    }
    and "the initial chosen option should not be displayed", {
        demo_site.should_not_have_selected_value '3'
    }
}
