module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-rotation-pass.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}