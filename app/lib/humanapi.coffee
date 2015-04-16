@Humanapi = Humanapi = new Crest(
  base_url: "https://api.humanapi.co/v1/"
)

Humanapi.addResource "human"
# nested in human
_([
  "profile", "activities",
  "blood_glucose", "blood_oxygen", "blood_pressure", "bmi",
  "body_fat", "height", "weight", "locations",
  "heart_rate", "sleeps"
]).each (resource)->
  Humanapi.human.addResource resource