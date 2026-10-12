from pathlib import Path


class readApex:

    def __init__(self,filePath):
        self.filePath = filePath


    def read_apex(self):
        fileContents = Path(self.filePath).read_text()
        return fileContents
    
    def checktestclass(self):
        fileContents = self.read_apex()
        if "@testClass" in fileContents:
            testClassName = fileContents.split("@testClass")[1].splitlines()[0].strip()
            return testClassName
        else:
            return "Not test class"

reader = readApex("salesforce-cicd/force-app/main/default/classes/OrderCalculator.cls")
print(reader.checktestclass())  