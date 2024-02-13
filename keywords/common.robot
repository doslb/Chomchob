*** Keywords ***
Open colornote application
    ${capability}       Create dictionary
        ...                 platformName=${platformName}
        ...                 platformVersion=${platformVersion}
        ...                 deviceName=${deviceName}
        ...                 udid=${udid}
        ...                 newCommandTimeout=60
        ...                 autoGrantPermissions=true
        ...                 appPackage=${appPackage}
        ...                 appActivity=${appActivity}
        ...                 automationName=${deviceName}
    Log     capability=&{capability}
    Open application      remote_url=${remoteUrl}
    ...                 &{capability}
    