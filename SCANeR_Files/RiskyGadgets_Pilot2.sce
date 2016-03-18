<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<sce version="1.4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <Scenario>
    <name></name>
    <description></description>
    <online>1</online>
    <steadystate>0</steadystate>
    <Environment>
      <gravity>9.81</gravity>
      <waterVolumetricMass>1000</waterVolumetricMass>
      <DayTime>
        <day>1</day>
        <month>8</month>
        <year>2009</year>
        <startTime>56100</startTime>
        <dawnTime>21600</dawnTime>
        <duskTime>72000</duskTime>
      </DayTime>
      <Lighting>
        <lightMin>0.5</lightMin>
        <lightMax>1</lightMax>
        <dynamicLighting>1</dynamicLighting>
      </Lighting>
      <Weather>
        <snowLevel>0</snowLevel>
        <rainLevel>0</rainLevel>
        <cloudsLevel>0.2</cloudsLevel>
        <skySaturation>1</skySaturation>
        <atmosphericPressure>101500</atmosphericPressure>
        <airTemperature>293.15</airTemperature>
        <groundTemperature>293.15</groundTemperature>
        <hygrometry>0.5</hygrometry>
        <waterOnRoad>0</waterOnRoad>
        <snowOnRoad>0</snowOnRoad>
      </Weather>
      <Panorama>
        <file></file>
        <scale>0.00225</scale>
      </Panorama>
    </Environment>
    <Aimsun>
      <replication>0</replication>
      <aimsunFile></aimsunFile>
    </Aimsun>
    <Visual>
      <Quality>
        <antiAliasing>8</antiAliasing>
        <anisotropicFiltering>8</anisotropicFiltering>
        <fadeLOD>0</fadeLOD>
      </Quality>
      <Viewing>
        <nearPlane>1</nearPlane>
        <farPlane>5000</farPlane>
        <terrainLODScale>1</terrainLODScale>
        <vehicleLODScale>1</vehicleLODScale>
      </Viewing>
      <RoadMarks>
        <mode></mode>
        <nodeName></nodeName>
        <Interval>
          <min>0</min>
          <max>0</max>
        </Interval>
      </RoadMarks>
      <Others>
        <refreshRate>60</refreshRate>
        <optimize>1</optimize>
        <viewMode></viewMode>
        <loadCache>0</loadCache>
      </Others>
      <Sfx>
        <fog>1</fog>
        <sky>1</sky>
        <fogHalo>1</fogHalo>
        <dazzleHalo>1</dazzleHalo>
      </Sfx>
    </Visual>
    <Ground>
      <name>RiskyGadgets_Pilot2.rnd</name>
      <infrastructure></infrastructure>
      <useSpecificSurfaceForTraffic>0</useSpecificSurfaceForTraffic>
    </Ground>
    <ProgressDlg>
      <showLog>1</showLog>
      <showLogInGraphsPane>0</showLogInGraphsPane>
      <showGraphs>0</showGraphs>
      <smoothGraphs>0</smoothGraphs>
      <showView>0</showView>
      <fullScreen>0</fullScreen>
      <playSound>0</playSound>
      <refreshRate>10</refreshRate>
      <ResultsGraph>
        <title>Graph</title>
        <tabName>Graph</tabName>
        <abcissa>131072</abcissa>
        <abcissaUnit>s</abcissaUnit>
      </ResultsGraph>
    </ProgressDlg>
    <Recording>
      <mode>AUTO</mode>
      <recordPath></recordPath>
      <ModelHandlerRecorder>
        <enable>0</enable>
        <enableTrafficRecording>0</enableTrafficRecording>
        <zipResultFile>0</zipResultFile>
        <isOneEvery>0</isOneEvery>
        <samplePeriod>0.1</samplePeriod>
        <oneEvery>1</oneEvery>
      </ModelHandlerRecorder>
      <ScanerNetRecorder/>
    </Recording>
    <PredefinedRun>
      <type>0</type>
    </PredefinedRun>
    <UserDataList/>
    <ScenarioScript>
      <script>
TYPEOF SCENARIO (0)
{
	IS_EXPANDED="1"
	LABEL="Main"
	FILE="RiskyGadgets_Pilot2_Main"
	TASK_KIND="0"

	TYPEOF INCLUDE (0)
	{
		IS_EXPANDED="1"
		ISA_INDEX="1"
		TASK_KIND="0"
		FILE="visualAnalog.inc"
	}

	TYPEOF VARIABLE (0)
	{
		LABEL="Debug"
		TYPE="FLOAT"
		VALUE="0.000000"
		INTERACTIVE_TYPE="VOID"
		IS_INITIALIZATION_NEEDED_AT_START="1"
		INTERACTIVE_MIN_VALUE="0"
		INTERACTIVE_MAX_VALUE="1"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF VARIABLE (19)
	{
		LABEL="CollisionCount"
		TYPE="FLOAT"
		VALUE="0.000000"
		INTERACTIVE_TYPE="VOID"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="0"
		INTERACTIVE_MAX_VALUE="9999"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF VARIABLE (6)
	{
		LABEL="distanceToSpeedLimit"
		TYPE="FLOAT"
		VALUE="900.000000"
		INTERACTIVE_TYPE="VOID"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="0"
		INTERACTIVE_MAX_VALUE="9999"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF VARIABLE (7)
	{
		LABEL="currentSpeedLimit"
		TYPE="FLOAT"
		VALUE="100.000000"
		INTERACTIVE_TYPE="VOID"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="0"
		INTERACTIVE_MAX_VALUE="9999"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF VARIABLE (8)
	{
		LABEL="nextSpeedLimit"
		TYPE="FLOAT"
		VALUE="80.000000"
		INTERACTIVE_TYPE="VOID"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="0"
		INTERACTIVE_MAX_VALUE="9999"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF VARIABLE (1)
	{
		LABEL="roadSegment"
		TYPE="FLOAT"
		VALUE="1.000000"
		INTERACTIVE_TYPE="VOID"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="0"
		INTERACTIVE_MAX_VALUE="9999"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF RULE (18)
	{
		LABEL="Rule 50-end"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 50 - end"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="14"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="50"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="50"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (17)
	{
		LABEL="Rule 60-50"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 60 - 50"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="13"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="50"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (16)
	{
		LABEL="Rule 40-60"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 40 - 60"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="12"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="40"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (15)
	{
		LABEL="Rule 60-40"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 60 - 40"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="11"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="40"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (14)
	{
		LABEL="Rule 70-60 no2"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 70 - 60 no2"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="9"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="70"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (13)
	{
		LABEL="Rule 80-70"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 80 - 70"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="8"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="80"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="70"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (12)
	{
		LABEL="Rule 60-80 no2"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 60 - 80 no2"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="7"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="80"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (11)
	{
		LABEL="Rule 70-60"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 70 - 60"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="6"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="70"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (10)
	{
		LABEL="Rule 50-70"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 50 - 70"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="5"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="50"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="70"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (5)
	{
		LABEL="Rule 80-50"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 80 - 50"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="4"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="80"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="50"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (20)
	{
		LABEL="Rule 80-60"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 80 - 60"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="80"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="2"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (4)
	{
		LABEL="Rule 60-80"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger 60 - 80"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="3"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="60"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="80"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (76)
	{
		LABEL="Rule to setup start of scenario"

		TYPEOF CONDITION (IS_SCENARIO_BEGINNING)
		{
			IS_EXPANDED="1"
		}

		TYPEOF ACTION (CONNECT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL)
			{
				KIND="ENUM"
				VALUE="CHANNEL_ALL"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (DEVICE)
			{
				KIND="ENUM"
				VALUE="DEVICE_ALL"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STATE)
			{
				KIND="ENUM"
				VALUE="STATE_ON"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_LOAD)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (MESSAGE)
			{
				KIND="FILE"
				VALUE="crash.wav"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_3DTYPE)
			{
				KIND="ENUM"
				VALUE="SOUND_3D_TYPE_3D"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_LOAD)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (MESSAGE)
			{
				KIND="FILE"
				VALUE="TheSimulationIsAboutToStop.wav"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_3DTYPE)
			{
				KIND="ENUM"
				VALUE="SOUND_3D_TYPE_3D"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_LOAD)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (MESSAGE)
			{
				KIND="FILE"
				VALUE="DianaBabiacPractice.wav"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="2"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_3DTYPE)
			{
				KIND="ENUM"
				VALUE="SOUND_3D_TYPE_3D"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_ATTACH_TO_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_XPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_YPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_ZPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_ANNULATION_DISTANCE)
			{
				KIND="USER"
				VALUE="100"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_ATTACH_TO_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_XPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_YPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_ZPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_ANNULATION_DISTANCE)
			{
				KIND="USER"
				VALUE="100"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_ATTACH_TO_VEHICLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="2"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_XPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_YPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (MAP_ZPOSITION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_ANNULATION_DISTANCE)
			{
				KIND="USER"
				VALUE="100"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_PLAY)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="2"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_PLAYMODE)
			{
				KIND="ENUM"
				VALUE="SOUND_PLAYMODE_ONCE"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_COLLISIONA)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STATE)
			{
				KIND="ENUM"
				VALUE="STATE_ON"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DAY_TIME)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TIME)
			{
				KIND="USER"
				VALUE="15.5"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (19)
	{
		LABEL="Rule for time of day"

		TYPEOF CONDITION (IS_TRUE)
		{
			IS_EXPANDED="1"
		}

		TYPEOF ACTION (SET_DAY_TIME)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TIME)
			{
				KIND="USER"
				VALUE="15.5"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (0)
	{
		LABEL="Rule to export desired channel info"

		TYPEOF CONDITION (IS_TRUE)
		{
			IS_EXPANDED="1"
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_SPEED)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="2"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="3"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="4"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="5"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_ACCELERATOR)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_BRAKE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_SCENARIO_CLOCK)
				{
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (152)
	{
		LABEL="Rule to increment crash count if one occurs"

		TYPEOF CONDITION (IS_VHL_COLLIDED)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="19"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (PLUS)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (OPERAND_1)
					{
						KIND="VARIABLE"
						VALUE="19"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (OPERAND_2)
					{
						KIND="USER"
						VALUE="1"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (7)
	{
		IS_EXPANDED="1"
		LABEL="Rule to show info on screen for debug"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DISPLAY_INTERACTIVE_TEXT)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE=" current distance  "
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_PRECISION)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE=" m"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_DISPLAYNAME)
			{
				KIND="USER"
				VALUE="LEFT"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DISPLAY_INTERACTIVE_TEXT)
		{

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE=" current driver speed "
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_PRECISION)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_SPEED)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE=" kph"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_DISPLAYNAME)
			{
				KIND="USER"
				VALUE="LEFT1"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DISPLAY_INTERACTIVE_TEXT)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE="segment "
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_PRECISION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE=""
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_DISPLAYNAME)
			{
				KIND="USER"
				VALUE="LEFT2"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DISPLAY_INTERACTIVE_TEXT)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE="current SpeedLimit "
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_PRECISION)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="7"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE="kmh"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_DISPLAYNAME)
			{
				KIND="USER"
				VALUE="LEFT3"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DISPLAY_INTERACTIVE_TEXT)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE="current tripmeter "
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_PRECISION)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_DISTANCE_TO_NEXT_SIGNAL)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (SIGN_TYPE)
					{
						KIND="ENUM"
						VALUE="S_STOP"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE="m"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_DISPLAYNAME)
			{
				KIND="USER"
				VALUE="LEFT4"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DISPLAY_INTERACTIVE_TEXT)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE="next speedlimit  "
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_PRECISION)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="8"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE="kmh"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_DISPLAYNAME)
			{
				KIND="USER"
				VALUE="LEFT5"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_DISPLAY_INTERACTIVE_TEXT)
		{

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE=" current scenario run time  "
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="0"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_PRECISION)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_SCENARIO_CLOCK)
				{
				}
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_VALUE)
			{
				KIND="USER"
				VALUE=" s"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (STRING_DISPLAYNAME)
			{
				KIND="USER"
				VALUE="LEFT6"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (6)
	{
		LABEL="Rule to play end of simulation message"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"
			MODIFIER="BECOMES_TRUE"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger to give end of simulation message"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SOUND_PLAY)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (SOUND_NUMBER)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (SOUND_PLAYMODE)
			{
				KIND="ENUM"
				VALUE="SOUND_PLAYMODE_ONCE"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (8)
	{
		LABEL="Rule to end scenario"

		TYPEOF CONDITION (IS_TRIGGERED_BY_VEHICLE)
		{
			IS_EXPANDED="1"
			MODIFIER="BECOMES_TRUE"

			TYPEOF PARAMETER (TRIGGER_NAME)
			{
				KIND="TRIGGER"
				VALUE="Trigger to end scenario"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (VHL_NUMBER)
			{
				KIND="VEHICLE"
				VALUE="0"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (GOTO_TASK)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (TASK_NUMBER)
			{
				KIND="ENUM"
				VALUE="GOTO_END_SCENARIO"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (2)
	{
		LABEL="Rule RS1"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="1"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="31"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (23)
	{
		LABEL="Rule RS2"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="2"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="48"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (21)
	{
		LABEL="Rule RS3"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="3"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="49"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (24)
	{
		LABEL="Rule RS7"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="7"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="5"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (25)
	{
		LABEL="Rule RS8"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="8"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="6"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (26)
	{
		LABEL="Rule RS9"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="9"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="2"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (22)
	{
		LABEL="Rule RS10"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="10"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="USER"
				VALUE="999"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (9)
	{
		LABEL="Rule RS11"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="11"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="52"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (30)
	{
		LABEL="Rule RS13"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="13"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="54"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (27)
	{
		LABEL="Rule RS4"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="4"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="28"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (28)
	{
		LABEL="Rule RS6"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="6"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="50"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (29)
	{
		LABEL="Rule RS12"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="12"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="53"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (31)
	{
		LABEL="Rule RS5"

		TYPEOF CONDITION (EQUAL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (OPERAND_1)
			{
				KIND="VARIABLE"
				VALUE="1"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (OPERAND_2)
			{
				KIND="USER"
				VALUE="5"
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (SET_VARIABLE)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="6"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_CART_DISTANCE_TO_VEHICLE)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="29"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}
	}
}
</script>
      <scriptName>Main</scriptName>
    </ScenarioScript>
    <Vehicle>
      <id>0</id>
      <driverId>0</driverId>
      <motionId>-1</motionId>
      <name>QUT_Car 26May14</name>
      <modelName>ExecutiveCar</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>MODELHANDLER</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>917.829767790663 370.134207437587 0</position>
        <heading>0.280868709087372</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>94.3916992939253</abscissa>
          <gapInItnSystem>-1.87499999999999</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Callas>
          <activeConfiguration>-1</activeConfiguration>
          <modulesTimeout>30</modulesTimeout>
          <waterTemperature>353.15</waterTemperature>
          <oilTemperature>353.15</oilTemperature>
          <gearboxTemperature>373.15</gearboxTemperature>
          <tireTemperature>313.15</tireTemperature>
          <brakeTemperature>313.15</brakeTemperature>
          <damperTemperature>313.15</damperTemperature>
          <initBatteryCharge>1</initBatteryCharge>
          <numericalMethod>1</numericalMethod>
          <initialStepIncrement>0.0005</initialStepIncrement>
          <maxStepIncrement>0.002</maxStepIncrement>
          <staticStateComputation>0</staticStateComputation>
          <corneringStartType>0</corneringStartType>
          <initialTurnRadius>0</initialTurnRadius>
          <initialLateralAcceleration>0</initialLateralAcceleration>
          <initialSteeringAngle>0</initialSteeringAngle>
          <computeGroundBodyInteraction>0</computeGroundBodyInteraction>
          <computeGroundCanonInteraction>0</computeGroundCanonInteraction>
          <applyGroundBodyInteractionForces>0</applyGroundBodyInteractionForces>
          <regulateBrakePedal>0</regulateBrakePedal>
          <limitManualGearChoice>0</limitManualGearChoice>
          <autoClutch>1</autoClutch>
          <cutThrottleOnGearChange>1</cutThrottleOnGearChange>
          <toeHealOnDownshift>0</toeHealOnDownshift>
          <antiWheeling>0</antiWheeling>
          <isDelayShiftUpAfterUp>1</isDelayShiftUpAfterUp>
          <delayShiftUpAfterUp>0.5</delayShiftUpAfterUp>
          <isDelayShiftUpAfterDown>1</isDelayShiftUpAfterDown>
          <delayShiftUpAfterDown>0.5</delayShiftUpAfterDown>
          <isDelayShiftDownAfterUp>1</isDelayShiftDownAfterUp>
          <delayShiftDownAfterUp>0.5</delayShiftDownAfterUp>
          <isDelayShiftDownAfterDown>1</isDelayShiftDownAfterDown>
          <delayShiftDownAfterDown>0.5</delayShiftDownAfterDown>
          <isLockGearDuringCornering>0</isLockGearDuringCornering>
          <lockGearDuringCorneringAngle>3.14159265358979</lockGearDuringCorneringAngle>
          <isParallelComputation>0</isParallelComputation>
          <Hack>
            <newWheelDOF>0</newWheelDOF>
            <newMovementEquations>0</newMovementEquations>
            <ignoreSteeringSpeed>0</ignoreSteeringSpeed>
            <steeringFilterCF>0</steeringFilterCF>
            <steeringFilterSize>0</steeringFilterSize>
          </Hack>
          <CustomData/>
        </Callas>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0</queenDirectionFactor>
        <frontAppearFactor>1</frontAppearFactor>
        <appearFrontRadius>1000</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>600</appearBackRadius>
        <disappearBackRadius>600</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>0</id>
      <process>ACQUISITION</process>
      <driverType>HumanDriver</driverType>
      <HumanDriver>
        <SteeringProcess></SteeringProcess>
        <ConfigurationFile></ConfigurationFile>
      </HumanDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>36.1111111111111</maxSpeed>
        <safetyTime>2.5</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0</overtakeRisk>
        <speedLimitRisk>1</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>13</id>
      <driverId>13</driverId>
      <motionId>-1</motionId>
      <name>Toyota_Rav4_White_US Parked</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>2431.12399904901 778.505128219854 -9.70549683555056e-009</position>
        <heading>4.99249744415283</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2</track>
          <abscissa>429.80148125722</abscissa>
          <gapInItnSystem>25.443380887993</gapInItnSystem>
          <relativeHeading>4.71155261993408</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>13</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>33.1166666666667</maxSpeed>
        <safetyTime>2.21</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.14</overtakeRisk>
        <speedLimitRisk>0.97</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>15</id>
      <driverId>15</driverId>
      <motionId>-1</motionId>
      <name>Peugot Parked</name>
      <modelName>Renault_Megane3_Black</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>2143.67307131464 694.578980758917 -1.63716742379572e-008</position>
        <heading>4.99333381652832</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2</track>
          <abscissa>130.350720855826</abscissa>
          <gapInItnSystem>26.3794246981651</gapInItnSystem>
          <relativeHeading>4.71238899230957</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>15</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <HumanDriver>
        <SteeringProcess></SteeringProcess>
        <ConfigurationFile></ConfigurationFile>
      </HumanDriver>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>36.1111111111111</maxSpeed>
        <safetyTime>2.5</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0</overtakeRisk>
        <speedLimitRisk>1</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Trigger>
      <name>Trigger to end scenario</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>6</width>
      <height>6</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>8523.06831562094 4885.34875439513 -2.66056368530515e-005</position>
        <heading>0.276896953582764</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5 2 2</track>
          <abscissa>172.139867074747</abscissa>
          <gapInItnSystem>-1.28516571344407</gapInItnSystem>
          <relativeHeading>6.27913761138916</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger to give end of simulation message</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>6</width>
      <height>6</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>8397.0769871564 4849.54230196506 -3.75817189361566e-005</position>
        <heading>0.276896953582764</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5 2 2</track>
          <abscissa>41.160342794095</abscissa>
          <gapInItnSystem>-1.81535728296241</gapInItnSystem>
          <relativeHeading>6.27913761138916</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Vehicle>
      <id>119</id>
      <driverId>119</driverId>
      <motionId>-1</motionId>
      <name>Peugeot_4008_Red Parked</name>
      <modelName>Renault_Megane3_Black</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>4649.06165291061 2624.98564998097 0.00265827646677147</position>
        <heading>1.85161828994751</heading>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>119</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>38.8888888888889</maxSpeed>
        <safetyTime>3.44</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.47</overtakeRisk>
        <speedLimitRisk>1.09</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>127</id>
      <driverId>127</driverId>
      <motionId>-1</motionId>
      <name>Citroen_C2 parked</name>
      <modelName>Citroen_C2</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>4562.32442886387 2600.81283774883 -6.80795284317862e-008</position>
        <heading>1.85174131393433</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2</track>
          <abscissa>115.101221855396</abscissa>
          <gapInItnSystem>-20.0187406806467</gapInItnSystem>
          <relativeHeading>1.57079637050629</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>127</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>38.8888888888889</maxSpeed>
        <safetyTime>3.42</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.46</overtakeRisk>
        <speedLimitRisk>1.09</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>133</id>
      <driverId>133</driverId>
      <motionId>-1</motionId>
      <name>Holden_Astra_Red_UK parked</name>
      <modelName>Holden_Astra_Red_UK</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>6962.23257190633 4450.23131980202 -3.99908049020782e-005</position>
        <heading>1.85174131393433</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2</track>
          <abscissa>165.124347987317</abscissa>
          <gapInItnSystem>-16.3971638218451</gapInItnSystem>
          <relativeHeading>1.57079637050629</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>133</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>37.5833333333333</maxSpeed>
        <safetyTime>3.01</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.26</overtakeRisk>
        <speedLimitRisk>1.05</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>139</id>
      <driverId>139</driverId>
      <motionId>-1</motionId>
      <name>Holden_Astra parked</name>
      <modelName>Holden_Astra</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>9092.46597034384 5071.71178855202 0</position>
        <heading>1.85174131393433</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 2 2</track>
          <abscissa>2121.19866113804</abscissa>
          <gapInItnSystem>22.7472759945597</gapInItnSystem>
          <relativeHeading>4.71238899230957</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>139</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>38.8888888888889</maxSpeed>
        <safetyTime>4.12</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.5</overtakeRisk>
        <speedLimitRisk>1.1</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>141</id>
      <driverId>141</driverId>
      <motionId>-1</motionId>
      <name>Opel_Astra_Red parked</name>
      <modelName>Opel_Astra_Red</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>10477.044535136 6583.43125409732 -1.82157261446726e-007</position>
        <heading>4.99333381652832</heading>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>141</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>38.8888888888889</maxSpeed>
        <safetyTime>3.78</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.5</overtakeRisk>
        <speedLimitRisk>1.1</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>142</id>
      <driverId>142</driverId>
      <motionId>-1</motionId>
      <name>Honda_CRV_Grey_US parked</name>
      <modelName>Honda_CRV_Grey_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>10816.0138219063 6727.47643698952 0</position>
        <heading>1.85174131393433</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 2 2 2</track>
          <abscissa>41.6345678611443</abscissa>
          <gapInItnSystem>-21.376882082901</gapInItnSystem>
          <relativeHeading>1.57079637050629</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>142</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>33.1305555555556</maxSpeed>
        <safetyTime>2.21</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.14</overtakeRisk>
        <speedLimitRisk>0.97</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>143</id>
      <driverId>143</driverId>
      <motionId>-1</motionId>
      <name>Toyota_Rav4_White_US parked</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>12140.0606969063 8262.18590964577 0</position>
        <heading>1.85174131393433</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 2 2 2</track>
          <abscissa>2341.92226752709</abscissa>
          <gapInItnSystem>-13.7237210958826</gapInItnSystem>
          <relativeHeading>1.57079637050629</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>143</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>37.1722222222222</maxSpeed>
        <safetyTime>2.94</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.22</overtakeRisk>
        <speedLimitRisk>1.04</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>31</id>
      <driverId>31</driverId>
      <motionId>-1</motionId>
      <name>sign1</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>1409.48178497938 512.033383204576 0</position>
        <heading>0.282308876514435</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 3</track>
          <abscissa>13.3230194002529</abscissa>
          <gapInItnSystem>-1.875</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>31</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.26</overtakeRisk>
        <speedLimitRisk>0.95</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>48</id>
      <driverId>48</driverId>
      <motionId>-1</motionId>
      <name>sign2</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>2023.59118689753 689.333408793013 1.16366787931905e-009</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2</track>
          <abscissa>13.5223746577018</abscissa>
          <gapInItnSystem>-1.87500000000003</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>48</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>3.42</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.46</overtakeRisk>
        <speedLimitRisk>1.09</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>49</id>
      <driverId>49</driverId>
      <motionId>-1</motionId>
      <name>sign3</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>2538.25219212746 837.314266162187 0.00078885254526701</position>
        <heading>0.28094482421875</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 5 2 2</track>
          <abscissa>2277.65205578199</abscissa>
          <gapInItnSystem>1.87500000000001</gapInItnSystem>
          <relativeHeading>3.14159250259399</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>49</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>3.44</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.47</overtakeRisk>
        <speedLimitRisk>1.09</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>28</id>
      <driverId>28</driverId>
      <motionId>-1</motionId>
      <name>sign4</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>3876.75134750494 2384.22847134039 0.00188711478669383</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2</track>
          <abscissa>13.3902296898652</abscissa>
          <gapInItnSystem>-1.87499999999992</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>28</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2.8</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.15</overtakeRisk>
        <speedLimitRisk>1.03</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>29</id>
      <driverId>29</driverId>
      <motionId>-1</motionId>
      <name>sign5</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>4365.48352706804 2525.12471401749 -1.71639266922572e-006</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2</track>
          <abscissa>13.2667836382236</abscissa>
          <gapInItnSystem>-1.87500000000009</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>29</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2.32</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.09</overtakeRisk>
        <speedLimitRisk>0.98</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>50</id>
      <driverId>50</driverId>
      <motionId>-1</motionId>
      <name>sign6</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>4993.36936302605 2706.3186498415 -6.79403906954696e-008</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 8</track>
          <abscissa>13.337365176038</abscissa>
          <gapInItnSystem>-1.87500000000045</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>50</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2.21</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.14</overtakeRisk>
        <speedLimitRisk>0.97</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Trigger>
      <name>Trigger 100 - 80</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>4</width>
      <height>4</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>931.613116227834 374.110635845886 0</position>
        <heading>0.280868709087372</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>108.737175132209</abscissa>
          <gapInItnSystem>-1.87499999999999</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 80 - 60</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>1408.24701396919 511.675230750528 0</position>
        <heading>0.282308876514435</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 3</track>
          <abscissa>12.037355125271</abscissa>
          <gapInItnSystem>-1.875</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 60 - 80</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>2022.30528930702 688.962327513846 1.16366787931897e-009</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2</track>
          <abscissa>12.1840047801914</abscissa>
          <gapInItnSystem>-1.8749999999999</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 80 - 50</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>2536.97947641759 836.946988878896 0.000788775626063623</position>
        <heading>0.28094482421875</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 5 2 2</track>
          <abscissa>2278.97670587955</abscissa>
          <gapInItnSystem>1.87499999999986</gapInItnSystem>
          <relativeHeading>3.14159250259399</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 50 - 70</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>3875.49641132844 2383.8663248327 0.00188711478669416</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2</track>
          <abscissa>12.0840846366151</abscissa>
          <gapInItnSystem>-1.87500000000025</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 70 - 60</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>4364.194728717 2524.75279564373 -1.71639266922598e-006</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2</track>
          <abscissa>11.925394631866</abscissa>
          <gapInItnSystem>-1.87500000000038</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 60 - 80 no2</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>4992.0731169258 2705.94458221391 -6.79951529739993e-008</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 8</track>
          <abscissa>11.9882245078958</abscissa>
          <gapInItnSystem>-1.87499999999972</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 80 - 70</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>5336.23730077781 2805.26266674069 -6.80818459386501e-008</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 8 2</track>
          <abscissa>12.027151596445</abscissa>
          <gapInItnSystem>-1.87500000000034</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Vehicle>
      <id>5</id>
      <driverId>5</driverId>
      <motionId>-1</motionId>
      <name>sign7</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>5337.5099719326 2805.62993116638 -6.80818459386501e-008</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 8 2</track>
          <abscissa>13.3517553208088</abscissa>
          <gapInItnSystem>-1.87499999999992</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>5</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.26</overtakeRisk>
        <speedLimitRisk>0.95</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>6</id>
      <driverId>6</driverId>
      <motionId>-1</motionId>
      <name>sign8</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>5848.67769884946 3550.70483427393 -6.80818459386501e-008</position>
        <heading>1.75029134750366</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 8 2</track>
          <abscissa>1030.59211359208</abscissa>
          <gapInItnSystem>-1.59999885158963</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>6</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>3.42</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.46</overtakeRisk>
        <speedLimitRisk>1.09</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Trigger>
      <name>Trigger 70 - 60 no2</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>5848.92734788528 3549.3379541432 -6.80818459386501e-008</position>
        <heading>1.75260102748871</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 8 2</track>
          <abscissa>1029.20631748644</abscissa>
          <gapInItnSystem>-1.59999818543459</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 60 - 40</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>6715.41636961051 4363.96555019185 -6.80818459386501e-008</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2</track>
          <abscissa>12.0834785331778</abscissa>
          <gapInItnSystem>-1.87500000000114</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Vehicle>
      <id>2</id>
      <driverId>2</driverId>
      <motionId>-1</motionId>
      <name>sign9</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>6716.67871456271 4364.32983470646 -6.80818459386501e-008</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2</track>
          <abscissa>13.3973346843321</abscissa>
          <gapInItnSystem>-1.87499999999998</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>2</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>3.44</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.47</overtakeRisk>
        <speedLimitRisk>1.09</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Trigger>
      <name>Trigger 40 - 60</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>7742.65306631761 4660.47151218749 0</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5</track>
          <abscissa>12.0077114700841</abscissa>
          <gapInItnSystem>-1.87499999999962</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Vehicle>
      <id>52</id>
      <driverId>52</driverId>
      <motionId>-1</motionId>
      <name>sign11</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>7743.91023113145 4660.83430183006 0</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5</track>
          <abscissa>13.3161761023591</abscissa>
          <gapInItnSystem>-1.87499999999981</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>52</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2.32</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.09</overtakeRisk>
        <speedLimitRisk>0.98</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>53</id>
      <driverId>53</driverId>
      <motionId>-1</motionId>
      <name>sign12</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>7976.99126833155 4728.10106900405 2.71282831166004e-005</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5 2</track>
          <abscissa>147.474990285568</abscissa>
          <gapInItnSystem>-1.87499999999983</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>53</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2.21</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.14</overtakeRisk>
        <speedLimitRisk>0.97</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Trigger>
      <name>Trigger 60 - 50</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>7975.7144356545 4727.73260365612 2.71282831166004e-005</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5 2</track>
          <abscissa>146.146055224022</abscissa>
          <gapInItnSystem>-1.87499999999988</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Trigger>
      <name>Trigger 50 - end</name>
      <filter>*</filter>
      <isRectangle>0</isRectangle>
      <width>2</width>
      <height>2</height>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>8369.01046230679 4841.50500723542 -3.88164487875951e-005</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5 2 2</track>
          <abscissa>11.9657479784263</abscissa>
          <gapInItnSystem>-1.87500000000012</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Trigger>
    <Vehicle>
      <id>54</id>
      <driverId>54</driverId>
      <motionId>-1</motionId>
      <name>sign13</name>
      <modelName>Toyota_Rav4_White_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>2</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>8370.24324186373 4841.86075983835 -3.88164487875928e-005</position>
        <heading>0.280944883823395</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 2 2 2 5 2 2</track>
          <abscissa>13.2488322899587</abscissa>
          <gapInItnSystem>-1.87500000000001</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>54</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2.18</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.16</overtakeRisk>
        <speedLimitRisk>0.97</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>1</id>
      <driverId>1</driverId>
      <motionId>-1</motionId>
      <name>Opel_Astra_Red</name>
      <modelName>Opel_Astra_Red</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>1</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>0</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>5847.24321426277 3540.11425069258 -6.80818459386501e-008</position>
        <heading>1.75594484806061</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 4 2 2 2 2 8 2</track>
          <abscissa>1020.45564007337</abscissa>
          <gapInItnSystem>-4.9499999866037</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>1</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>0</maxSpeed>
        <safetyTime>2</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.26</overtakeRisk>
        <speedLimitRisk>0.95</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>3</id>
      <driverId>3</driverId>
      <motionId>-1</motionId>
      <name>Renault_Espace_Black_US</name>
      <modelName>Renault_Espace_Black_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>1413.1621151734 509.196321343261 0</position>
        <heading>3.42390155792236</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track 3</track>
          <abscissa>16.0673317625612</abscissa>
          <gapInItnSystem>1.8750000000001</gapInItnSystem>
          <relativeHeading>3.14159274101257</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>2</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>3</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>31.7805555555556</maxSpeed>
        <safetyTime>2</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>0</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.26</overtakeRisk>
        <speedLimitRisk>0</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
  </Scenario>

</sce>
