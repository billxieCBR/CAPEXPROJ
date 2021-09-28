{
	"contents": {
		"9459db70-9386-4a7d-81e1-242443bb71df": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "capex_00",
			"subject": "CAPEX Approval for '${context.Title}'",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "RequestId",
				"label": "Request Id",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "Country",
				"label": "Country",
				"type": "string",
				"value": "${context.Investment.Country}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "TotalCost",
				"label": "Total Cost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}],
			"name": "capex_00",
			"documentation": "Capital Expenditure Approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Capex Request "
				},
				"e0a8bf06-9c22-4123-8b5a-d86a78ee0267": {
					"name": "End (Rejection)"
				},
				"bb510867-9a41-4583-a920-6ad2518d0e74": {
					"name": "End (Approval)"
				},
				"ad8c9d64-a295-49dd-ad16-cdd02bb4eec3": {
					"name": "End (Rejection)"
				}
			},
			"activities": {
				"b8da4bfc-9552-4c57-b550-94af9fb3dba2": {
					"name": "Prepare Data"
				},
				"91fc3ef7-83f4-4656-afd9-c89572c9e2b3": {
					"name": "Retrieve Approval Steps"
				},
				"e6b458b4-909a-4ed6-ab8b-86fbd3ec7100": {
					"name": "Approval required?"
				},
				"ce43e805-e73e-47d0-93dd-8c0273d86ab7": {
					"name": "Approval Task (Local Manager)"
				},
				"dcd58dfe-be20-4ed3-9f29-4b692db909de": {
					"name": "Handle Approval (Local Manager)"
				},
				"3306377a-c338-41f6-878d-a2e168e56927": {
					"name": "Approval result?"
				},
				"f12f5e1d-629a-4660-932c-8aac1ee5eb0b": {
					"name": "join"
				},
				"73a33074-de69-4353-85d1-285e0f40f44b": {
					"name": "Rework Task"
				},
				"7cc2e29a-ec0b-4433-8326-e914f8dc2727": {
					"name": "Approval required?"
				},
				"105422f7-187f-4046-aea0-54d03862b17d": {
					"name": "Approval Task (Central Manager)"
				},
				"f8002923-e398-4641-9f05-2baa94639143": {
					"name": "Handle Approval (Central Manager)"
				},
				"12589fa2-84d6-40e3-81ae-a28cf5245ebd": {
					"name": "Approval result?"
				}
			},
			"sequenceFlows": {
				"4b37ecb6-3223-400e-aba2-20cde33a2e78": {
					"name": "SequenceFlow2"
				},
				"0680cf6e-c267-4b90-9778-c237f1fbd13c": {
					"name": "SequenceFlow3"
				},
				"467134bc-9b8c-4cdc-aee3-1e4a00698e5b": {
					"name": "SequenceFlow4"
				},
				"a182c4ac-0776-4266-be81-fb297743070e": {
					"name": "SequenceFlow6"
				},
				"5efd1c85-e3f2-40fb-9e34-a5bf40923a47": {
					"name": "SequenceFlow7"
				},
				"14b456a9-5b7e-4748-bcb3-35fcdbc0a4a5": {
					"name": "Approve"
				},
				"e8ee4c3b-e56e-4b57-a482-485d4584fd86": {
					"name": "no"
				},
				"8e4e9cd0-d1d0-430f-bd58-afa0fb549424": {
					"name": "yes"
				},
				"d0f9b32c-94e4-4683-96c5-09718f549473": {
					"name": "Reject"
				},
				"873b99b2-c8dc-4911-93cc-2fedb2c5cc7b": {
					"name": "Rework"
				},
				"8af4abc9-db0d-468c-92aa-5c9670c474d8": {
					"name": "SequenceFlow14"
				},
				"26df08fc-9bc7-448d-821b-b25788f7773a": {
					"name": "SequenceFlow16"
				},
				"0033fc3e-629d-4b91-9484-095dc4e32607": {
					"name": "yes"
				},
				"6ac55ce7-dde7-4f80-95b4-d922914fcd7d": {
					"name": "SequenceFlow18"
				},
				"1432c66c-3455-4ea2-b763-0cbbd74727c1": {
					"name": "SequenceFlow19"
				},
				"07adcf85-7448-4859-be6d-2b700882b348": {
					"name": "Approve"
				},
				"11fdebea-f924-44b4-8104-4145da9e0215": {
					"name": "no"
				},
				"e98ecea5-8561-4880-8584-f3fe626b13e8": {
					"name": "SequenceFlow22"
				},
				"3e140306-b3e0-42b1-90d1-d0cdf50b2b6c": {
					"name": "Rework"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Capex Request ",
			"sampleContextRefs": {
				"d0185b58-e5b4-41f6-9949-29638ab6f1b3": {}
			}
		},
		"e0a8bf06-9c22-4123-8b5a-d86a78ee0267": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"b4a9de79-0e4d-4eac-a5a5-28324ba9880d": {}
			}
		},
		"bb510867-9a41-4583-a920-6ad2518d0e74": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End (Approval)",
			"eventDefinitions": {
				"c733fad8-acd9-47b0-9429-f45d2a9ca294": {}
			}
		},
		"ad8c9d64-a295-49dd-ad16-cdd02bb4eec3": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"6324b067-fdfd-4633-ac94-03106b5fa778": {}
			}
		},
		"b8da4bfc-9552-4c57-b550-94af9fb3dba2": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/PrepareData.js",
			"id": "scripttask1",
			"name": "Prepare Data"
		},
		"91fc3ef7-83f4-4656-afd9-c89572c9e2b3": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/workingsetrule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.approvalStepsResult}",
			"id": "servicetask1",
			"name": "Retrieve Approval Steps"
		},
		"e6b458b4-909a-4ed6-ab8b-86fbd3ec7100": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval required?",
			"default": "e8ee4c3b-e56e-4b57-a482-485d4584fd86"
		},
		"ce43e805-e73e-47d0-93dd-8c0273d86ab7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Local Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResult.Result[0].Approvers.lm_u serid},${context.Requestor.UserId}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"customAttributes": [{
				"id": "name",
				"label": "Name",
				"type": "string",
				"value": "${context.Investment.Name}"
			}],
			"id": "usertask1",
			"name": "Approval Task (Local Manager)"
		},
		"dcd58dfe-be20-4ed3-9f29-4b692db909de": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/HandleApprovalLocalManager.js",
			"id": "scripttask2",
			"name": "Handle Approval (Local Manager)"
		},
		"3306377a-c338-41f6-878d-a2e168e56927": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval result?",
			"default": "d0f9b32c-94e4-4683-96c5-09718f549473"
		},
		"f12f5e1d-629a-4660-932c-8aac1ee5eb0b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "join"
		},
		"73a33074-de69-4353-85d1-285e0f40f44b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework for '${context.Title}'",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Requestor.UserId}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "Rework Task",
			"dueDateRef": "7ec6dab7-b8d6-459f-a291-9275e781cfbb"
		},
		"7cc2e29a-ec0b-4433-8326-e914f8dc2727": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Approval required?",
			"default": "11fdebea-f924-44b4-8104-4145da9e0215"
		},
		"105422f7-187f-4046-aea0-54d03862b17d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Central Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResu lt.Result[0].Approvers.cm_userid}, ${context.Requestor.UserId}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask3",
			"name": "Approval Task (Central Manager)"
		},
		"f8002923-e398-4641-9f05-2baa94639143": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/HandleApprovalCentralManager.js",
			"id": "scripttask3",
			"name": "Handle Approval (Central Manager)"
		},
		"12589fa2-84d6-40e3-81ae-a28cf5245ebd": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "Approval result?",
			"default": "e98ecea5-8561-4880-8584-f3fe626b13e8"
		},
		"4b37ecb6-3223-400e-aba2-20cde33a2e78": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "b8da4bfc-9552-4c57-b550-94af9fb3dba2"
		},
		"0680cf6e-c267-4b90-9778-c237f1fbd13c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "b8da4bfc-9552-4c57-b550-94af9fb3dba2",
			"targetRef": "91fc3ef7-83f4-4656-afd9-c89572c9e2b3"
		},
		"467134bc-9b8c-4cdc-aee3-1e4a00698e5b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "91fc3ef7-83f4-4656-afd9-c89572c9e2b3",
			"targetRef": "e6b458b4-909a-4ed6-ab8b-86fbd3ec7100"
		},
		"a182c4ac-0776-4266-be81-fb297743070e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "ce43e805-e73e-47d0-93dd-8c0273d86ab7",
			"targetRef": "dcd58dfe-be20-4ed3-9f29-4b692db909de"
		},
		"5efd1c85-e3f2-40fb-9e34-a5bf40923a47": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "dcd58dfe-be20-4ed3-9f29-4b692db909de",
			"targetRef": "3306377a-c338-41f6-878d-a2e168e56927"
		},
		"14b456a9-5b7e-4748-bcb3-35fcdbc0a4a5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow8",
			"name": "Approve",
			"sourceRef": "3306377a-c338-41f6-878d-a2e168e56927",
			"targetRef": "f12f5e1d-629a-4660-932c-8aac1ee5eb0b"
		},
		"e8ee4c3b-e56e-4b57-a482-485d4584fd86": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "no",
			"sourceRef": "e6b458b4-909a-4ed6-ab8b-86fbd3ec7100",
			"targetRef": "f12f5e1d-629a-4660-932c-8aac1ee5eb0b"
		},
		"8e4e9cd0-d1d0-430f-bd58-afa0fb549424": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.lm_required}",
			"id": "sequenceflow11",
			"name": "yes",
			"sourceRef": "e6b458b4-909a-4ed6-ab8b-86fbd3ec7100",
			"targetRef": "ce43e805-e73e-47d0-93dd-8c0273d86ab7"
		},
		"d0f9b32c-94e4-4683-96c5-09718f549473": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "Reject",
			"sourceRef": "3306377a-c338-41f6-878d-a2e168e56927",
			"targetRef": "e0a8bf06-9c22-4123-8b5a-d86a78ee0267"
		},
		"873b99b2-c8dc-4911-93cc-2fedb2c5cc7b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow13",
			"name": "Rework",
			"sourceRef": "3306377a-c338-41f6-878d-a2e168e56927",
			"targetRef": "73a33074-de69-4353-85d1-285e0f40f44b"
		},
		"8af4abc9-db0d-468c-92aa-5c9670c474d8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "73a33074-de69-4353-85d1-285e0f40f44b",
			"targetRef": "b8da4bfc-9552-4c57-b550-94af9fb3dba2"
		},
		"26df08fc-9bc7-448d-821b-b25788f7773a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "f12f5e1d-629a-4660-932c-8aac1ee5eb0b",
			"targetRef": "7cc2e29a-ec0b-4433-8326-e914f8dc2727"
		},
		"0033fc3e-629d-4b91-9484-095dc4e32607": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.cm_required}",
			"id": "sequenceflow17",
			"name": "yes",
			"sourceRef": "7cc2e29a-ec0b-4433-8326-e914f8dc2727",
			"targetRef": "105422f7-187f-4046-aea0-54d03862b17d"
		},
		"6ac55ce7-dde7-4f80-95b4-d922914fcd7d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "105422f7-187f-4046-aea0-54d03862b17d",
			"targetRef": "f8002923-e398-4641-9f05-2baa94639143"
		},
		"1432c66c-3455-4ea2-b763-0cbbd74727c1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "f8002923-e398-4641-9f05-2baa94639143",
			"targetRef": "12589fa2-84d6-40e3-81ae-a28cf5245ebd"
		},
		"07adcf85-7448-4859-be6d-2b700882b348": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow20",
			"name": "Approve",
			"sourceRef": "12589fa2-84d6-40e3-81ae-a28cf5245ebd",
			"targetRef": "bb510867-9a41-4583-a920-6ad2518d0e74"
		},
		"11fdebea-f924-44b4-8104-4145da9e0215": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "no",
			"sourceRef": "7cc2e29a-ec0b-4433-8326-e914f8dc2727",
			"targetRef": "bb510867-9a41-4583-a920-6ad2518d0e74"
		},
		"e98ecea5-8561-4880-8584-f3fe626b13e8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "12589fa2-84d6-40e3-81ae-a28cf5245ebd",
			"targetRef": "ad8c9d64-a295-49dd-ad16-cdd02bb4eec3"
		},
		"3e140306-b3e0-42b1-90d1-d0cdf50b2b6c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow23",
			"name": "Rework",
			"sourceRef": "12589fa2-84d6-40e3-81ae-a28cf5245ebd",
			"targetRef": "73a33074-de69-4353-85d1-285e0f40f44b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"bba253d2-3968-43ef-88f4-739be78504a0": {},
				"a37d2cf9-5563-4067-b523-7bc59de0d22a": {},
				"6d2492d3-c7fc-4267-bcbb-93696dcff069": {},
				"e7982cd3-9f89-48b7-88f7-c531a0a4c1db": {},
				"0e5cc2e0-1935-4c2d-beac-2927e1a4c11b": {},
				"ef58731b-ec2b-4425-b77a-b4dbccc75c90": {},
				"21dde328-3184-4fd2-8a29-c52854b6ec59": {},
				"328886af-1a02-4c97-999c-a1a26df8da5c": {},
				"06c89cc5-5665-4073-bd0f-71afc722bab7": {},
				"78851110-8b52-47d7-a742-dde8b02d25cc": {},
				"e8acb78b-df5a-44b5-aaa7-96a164a935e5": {},
				"8b35f302-ba60-4f65-a4e3-0f5dc853e073": {},
				"7706c3f7-c960-47ce-a0d0-9604f7657d4d": {},
				"6f6dc4f6-8e3e-4f04-b57a-427b6e0afe00": {},
				"98562a3c-1982-4d48-893c-87de4ba87612": {},
				"65555f77-9372-49da-b431-b7e93bb3e0e4": {},
				"cacc4efd-c52c-4a6a-9139-324a694a0796": {},
				"ae27b95b-099b-43ba-8c8d-116a37093374": {},
				"0193ca2f-21c0-4d5d-800b-96d2fb2f8f8e": {},
				"00704990-ef2b-432c-807d-440a9eefef49": {},
				"15dfb420-a4c1-4c99-a350-2244608827d8": {},
				"cee8f40d-bffa-49a4-aacb-f129b87eaab0": {},
				"8b99517d-a448-487a-899e-950fdaa6026f": {},
				"b38516c3-285f-4d6c-bd8e-f3eaa752e504": {},
				"ebd6d805-f5db-440e-b1d4-cdf13e5941a3": {},
				"07fd5b80-15d9-4bbc-bad4-6afcecd0157c": {},
				"de5caf8a-9755-4d31-a615-f9d0667bbbcf": {},
				"46a4e09c-587c-460f-a4f5-904749614246": {},
				"af36aa61-d44f-4eef-9fec-184d9bdd126a": {},
				"3f895954-fee6-4517-8f10-f6f6b9d65db2": {},
				"35eb1469-a668-4135-9829-0c69235d53f8": {},
				"d9c619b9-a5e8-490c-bc5b-fe34dd5dd5db": {},
				"0cf40fd2-2f4e-41e1-acea-d159ba88be2c": {},
				"83761dab-212a-4d37-b968-bf9eea083cf0": {}
			}
		},
		"d0185b58-e5b4-41f6-9949-29638ab6f1b3": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/capex_00/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"b4a9de79-0e4d-4eac-a5a5-28324ba9880d": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"c733fad8-acd9-47b0-9429-f45d2a9ca294": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"6324b067-fdfd-4633-ac94-03106b5fa778": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition3"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"bba253d2-3968-43ef-88f4-739be78504a0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 182,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "b8da4bfc-9552-4c57-b550-94af9fb3dba2"
		},
		"a37d2cf9-5563-4067-b523-7bc59de0d22a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 232,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "bba253d2-3968-43ef-88f4-739be78504a0",
			"object": "4b37ecb6-3223-400e-aba2-20cde33a2e78"
		},
		"6d2492d3-c7fc-4267-bcbb-93696dcff069": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 332,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "91fc3ef7-83f4-4656-afd9-c89572c9e2b3"
		},
		"e7982cd3-9f89-48b7-88f7-c531a0a4c1db": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232,116 382,116",
			"sourceSymbol": "bba253d2-3968-43ef-88f4-739be78504a0",
			"targetSymbol": "6d2492d3-c7fc-4267-bcbb-93696dcff069",
			"object": "0680cf6e-c267-4b90-9778-c237f1fbd13c"
		},
		"0e5cc2e0-1935-4c2d-beac-2927e1a4c11b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 478.5,
			"y": 95,
			"object": "e6b458b4-909a-4ed6-ab8b-86fbd3ec7100"
		},
		"ef58731b-ec2b-4425-b77a-b4dbccc75c90": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "382,116 499.5,116",
			"sourceSymbol": "6d2492d3-c7fc-4267-bcbb-93696dcff069",
			"targetSymbol": "0e5cc2e0-1935-4c2d-beac-2927e1a4c11b",
			"object": "467134bc-9b8c-4cdc-aee3-1e4a00698e5b"
		},
		"21dde328-3184-4fd2-8a29-c52854b6ec59": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 570.5,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "ce43e805-e73e-47d0-93dd-8c0273d86ab7"
		},
		"328886af-1a02-4c97-999c-a1a26df8da5c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 720.5,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "dcd58dfe-be20-4ed3-9f29-4b692db909de"
		},
		"06c89cc5-5665-4073-bd0f-71afc722bab7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "620.5,116 770.5,116",
			"sourceSymbol": "21dde328-3184-4fd2-8a29-c52854b6ec59",
			"targetSymbol": "328886af-1a02-4c97-999c-a1a26df8da5c",
			"object": "a182c4ac-0776-4266-be81-fb297743070e"
		},
		"78851110-8b52-47d7-a742-dde8b02d25cc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 867,
			"y": 95,
			"object": "3306377a-c338-41f6-878d-a2e168e56927"
		},
		"e8acb78b-df5a-44b5-aaa7-96a164a935e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "770.5,116 888,116",
			"sourceSymbol": "328886af-1a02-4c97-999c-a1a26df8da5c",
			"targetSymbol": "78851110-8b52-47d7-a742-dde8b02d25cc",
			"object": "5efd1c85-e3f2-40fb-9e34-a5bf40923a47"
		},
		"8b35f302-ba60-4f65-a4e3-0f5dc853e073": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 955.5,
			"y": 95,
			"object": "f12f5e1d-629a-4660-932c-8aac1ee5eb0b"
		},
		"7706c3f7-c960-47ce-a0d0-9604f7657d4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "888,116 976.5,116",
			"sourceSymbol": "78851110-8b52-47d7-a742-dde8b02d25cc",
			"targetSymbol": "8b35f302-ba60-4f65-a4e3-0f5dc853e073",
			"object": "14b456a9-5b7e-4748-bcb3-35fcdbc0a4a5"
		},
		"6f6dc4f6-8e3e-4f04-b57a-427b6e0afe00": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "499.5,116 499.5,6 738,6 738,45 976.5,45 976.5,95.5",
			"sourceSymbol": "0e5cc2e0-1935-4c2d-beac-2927e1a4c11b",
			"targetSymbol": "8b35f302-ba60-4f65-a4e3-0f5dc853e073",
			"object": "e8ee4c3b-e56e-4b57-a482-485d4584fd86"
		},
		"98562a3c-1982-4d48-893c-87de4ba87612": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "499.5,116 499.5,268 590,268 590,116",
			"sourceSymbol": "0e5cc2e0-1935-4c2d-beac-2927e1a4c11b",
			"targetSymbol": "21dde328-3184-4fd2-8a29-c52854b6ec59",
			"object": "8e4e9cd0-d1d0-430f-bd58-afa0fb549424"
		},
		"65555f77-9372-49da-b431-b7e93bb3e0e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 870.5,
			"y": 50.5,
			"width": 35,
			"height": 35,
			"object": "e0a8bf06-9c22-4123-8b5a-d86a78ee0267"
		},
		"cacc4efd-c52c-4a6a-9139-324a694a0796": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "888,116 888,68",
			"sourceSymbol": "78851110-8b52-47d7-a742-dde8b02d25cc",
			"targetSymbol": "65555f77-9372-49da-b431-b7e93bb3e0e4",
			"object": "d0f9b32c-94e4-4683-96c5-09718f549473"
		},
		"ae27b95b-099b-43ba-8c8d-116a37093374": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 273,
			"y": 394,
			"width": 100,
			"height": 60,
			"object": "73a33074-de69-4353-85d1-285e0f40f44b"
		},
		"0193ca2f-21c0-4d5d-800b-96d2fb2f8f8e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "888,137 888,413 329,413",
			"sourceSymbol": "78851110-8b52-47d7-a742-dde8b02d25cc",
			"targetSymbol": "ae27b95b-099b-43ba-8c8d-116a37093374",
			"object": "873b99b2-c8dc-4911-93cc-2fedb2c5cc7b"
		},
		"00704990-ef2b-432c-807d-440a9eefef49": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "323,424 323,269.75 232,269.75 232,125",
			"sourceSymbol": "ae27b95b-099b-43ba-8c8d-116a37093374",
			"targetSymbol": "bba253d2-3968-43ef-88f4-739be78504a0",
			"object": "8af4abc9-db0d-468c-92aa-5c9670c474d8"
		},
		"15dfb420-a4c1-4c99-a350-2244608827d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1058,
			"y": 96,
			"object": "7cc2e29a-ec0b-4433-8326-e914f8dc2727"
		},
		"cee8f40d-bffa-49a4-aacb-f129b87eaab0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "976.5,116.5 1079,116.5",
			"sourceSymbol": "8b35f302-ba60-4f65-a4e3-0f5dc853e073",
			"targetSymbol": "15dfb420-a4c1-4c99-a350-2244608827d8",
			"object": "26df08fc-9bc7-448d-821b-b25788f7773a"
		},
		"8b99517d-a448-487a-899e-950fdaa6026f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1187,
			"y": 96,
			"width": 100,
			"height": 60,
			"object": "105422f7-187f-4046-aea0-54d03862b17d"
		},
		"b38516c3-285f-4d6c-bd8e-f3eaa752e504": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1079,117 1143.5,117 1143.5,134 1247,134",
			"sourceSymbol": "15dfb420-a4c1-4c99-a350-2244608827d8",
			"targetSymbol": "8b99517d-a448-487a-899e-950fdaa6026f",
			"object": "0033fc3e-629d-4b91-9484-095dc4e32607"
		},
		"ebd6d805-f5db-440e-b1d4-cdf13e5941a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1358,
			"y": 100,
			"width": 100,
			"height": 60,
			"object": "f8002923-e398-4641-9f05-2baa94639143"
		},
		"07fd5b80-15d9-4bbc-bad4-6afcecd0157c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1252,139 1395,139",
			"sourceSymbol": "8b99517d-a448-487a-899e-950fdaa6026f",
			"targetSymbol": "ebd6d805-f5db-440e-b1d4-cdf13e5941a3",
			"object": "6ac55ce7-dde7-4f80-95b4-d922914fcd7d"
		},
		"de5caf8a-9755-4d31-a615-f9d0667bbbcf": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1527,
			"y": 113,
			"object": "12589fa2-84d6-40e3-81ae-a28cf5245ebd"
		},
		"46a4e09c-587c-460f-a4f5-904749614246": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1411,140 1543,140",
			"sourceSymbol": "ebd6d805-f5db-440e-b1d4-cdf13e5941a3",
			"targetSymbol": "de5caf8a-9755-4d31-a615-f9d0667bbbcf",
			"object": "1432c66c-3455-4ea2-b763-0cbbd74727c1"
		},
		"af36aa61-d44f-4eef-9fec-184d9bdd126a": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1674.5,
			"y": 116.5,
			"width": 35,
			"height": 35,
			"object": "bb510867-9a41-4583-a920-6ad2518d0e74"
		},
		"3f895954-fee6-4517-8f10-f6f6b9d65db2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1548,135 1694,135",
			"sourceSymbol": "de5caf8a-9755-4d31-a615-f9d0667bbbcf",
			"targetSymbol": "af36aa61-d44f-4eef-9fec-184d9bdd126a",
			"object": "07adcf85-7448-4859-be6d-2b700882b348"
		},
		"35eb1469-a668-4135-9829-0c69235d53f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1079,96.5 1079,-98 1692,-98 1692,117",
			"sourceSymbol": "15dfb420-a4c1-4c99-a350-2244608827d8",
			"targetSymbol": "af36aa61-d44f-4eef-9fec-184d9bdd126a",
			"object": "11fdebea-f924-44b4-8104-4145da9e0215"
		},
		"d9c619b9-a5e8-490c-bc5b-fe34dd5dd5db": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1520.5,
			"y": -38.5,
			"width": 35,
			"height": 35,
			"object": "ad8c9d64-a295-49dd-ad16-cdd02bb4eec3"
		},
		"0cf40fd2-2f4e-41e1-acea-d159ba88be2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1548,134 1548,54.75 1538,54.75 1538,-21",
			"sourceSymbol": "de5caf8a-9755-4d31-a615-f9d0667bbbcf",
			"targetSymbol": "d9c619b9-a5e8-490c-bc5b-fe34dd5dd5db",
			"object": "e98ecea5-8561-4880-8584-f3fe626b13e8"
		},
		"83761dab-212a-4d37-b968-bf9eea083cf0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1548,134 1548,510 660,510 660,430 341,430",
			"sourceSymbol": "de5caf8a-9755-4d31-a615-f9d0667bbbcf",
			"targetSymbol": "ae27b95b-099b-43ba-8c8d-116a37093374",
			"object": "3e140306-b3e0-42b1-90d1-d0cdf50b2b6c"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 3,
			"timereventdefinition": 1,
			"sequenceflow": 23,
			"startevent": 1,
			"endevent": 4,
			"usertask": 3,
			"servicetask": 1,
			"scripttask": 3,
			"exclusivegateway": 6
		},
		"7ec6dab7-b8d6-459f-a291-9275e781cfbb": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P2D",
			"id": "timereventdefinition1"
		}
	}
}