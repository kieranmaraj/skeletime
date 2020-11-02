{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 68.0, 78.0, 1576.0, 938.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"showontab" : 1,
		"workspacedisabled" : 1,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1386.0, 2226.775023912226061, 107.0, 22.0 ],
					"text" : "scale 0. 1. -0.2 1.1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-39",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1386.0, 2196.775023912226061, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1206.0, 2257.0, 80.0, 22.0 ],
					"text" : "speedlim 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 2315.0, 80.0, 22.0 ],
					"text" : "speedlim 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1296.0, 2300.0, 95.0, 22.0 ],
					"text" : "prepend volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1191.0, 2330.0, 101.0, 22.0 ],
					"text" : "s automata_input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1191.0, 2300.0, 89.0, 22.0 ],
					"text" : "prepend tempo"
				}

			}
, 			{
				"box" : 				{
					"bubbleside" : 2,
					"fontface" : 1,
					"fontname" : "Bebas Neue",
					"fontsize" : 18.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1191.0, 2175.0, 219.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1185.0, 2395.0, 219.0, 24.0 ],
					"text" : "Normalized Fader height",
					"textjustification" : 1,
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"format" : 6,
					"id" : "obj-42",
					"maxclass" : "flonum",
					"maximum" : 0.95,
					"minimum" : 0.05,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1206.0, 2210.0, 150.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1200.0, 2430.0, 150.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1386.0, 2166.775023912226061, 185.0, 22.0 ],
					"text" : "r posenet_right_wrist_normalized"
				}

			}
, 			{
				"box" : 				{
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-15",
					"linecount" : 28,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 906.0, 1250.0, 352.0, 413.0 ],
					"text" : "Here is where the motion tracking data is stored. The input name appears as a track in the mubu object (a tab), while each recording of a sign is stored in a single buffer.\n\nThere should normally be only one track in the mubu object. The buffer management script is designed in a way that things could also work with several tracks, historically because I made other design choices originally, but on the side the kNN, I assumed that it only should use track 1. Later, I might revisit the multitrack possibilities.\n\nUse can use the buttons on the left to control the mubu object and save the recordings to the data folder.\n\nTo load previously trained sign, you can drop your .mubu files in the next box. All the signs that are recovered from these files should show up.\n\nWarning: to avoid biases in the training dataset, each training example must be loaded only once; in other words, if you save a training example into two separate files and load them, it will appear twice more than other training examples for the same sign and therefore skew/bias the training set that is used for classification.\n\nWarning 2: internally, the training function depends on the name of the model: full_body or hands. TODO: model ontololy and properties instead"
				}

			}
, 			{
				"box" : 				{
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"linecount" : 23,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 906.0, 890.0, 1080.0, 355.0 ],
					"text" : "1) For the model, define the signs you would like to recognize in the form <lexical_category>:<name>, for instance identifier:wholegroup, content:trackA, ... Avoid spaces and keep the naming consistent!\n\n2) Start the recording of the training examples by hitting the LAUNCH RECORDING button. You can change the parameters of the recording session according to what you need and the buffer structure that is needed for the classifier:\n\n- for Wekinator DTW, each buffer should be a single training example. Therefore, the number of repetitions should be large.\n- for mubu kNN, each point in a buffer is a training example and the buffers are not regrouped by labels, at the opposition of mubu HHMM for instance. With kNN, you want to set the number of repetitions to 1 and instead change the buffer length to record more training data. TODO: merge datasets for kNN\n\nMoreover, you can also set:\n\n- Index of the starting sign (in most cases, should be left to 1)\n- Amount of time dedicated for training each sign. The lower it is, the faster you must perform the sign during the training process.\n- Time-gap between two trainings. Increase that number to give you more time to relax between each sign.\n- The initial preparation time, from the moment you start the training process. Make sure it gives you enough time to go from the computer to the place you will perform at.\n\nWatch out the training state and try not to miss a training. If you are unsure about the quallity of your training, you can always try again the training session or add more training examples.\n\nWhen your training process is done, save the corresponding .mubu file by pushing the \"save\" button in the box 2.4. New data files are saved by default to the \"data\" folder. Do not load additional data before you save the newly recorded signs, in order not to load the same training examples twice in the database, which would bias the training example set.\n\n3) If you need to have a bigger panel for displaying the recording states, hit the \"Open recording state big panel\" button\n"
				}

			}
, 			{
				"box" : 				{
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 906.0, 830.0, 222.0, 36.0 ],
					"text" : "You can select the model with the tabs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.473705172538757, 1222.631571769714355, 101.0, 22.0 ],
					"text" : "s recording_state"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1431.0, 1580.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 20.933288928121328, 1817.701519370079041, 88.0, 22.0 ],
					"text" : "loadpercent 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.402275919914246, 2106.9154052734375, 180.0, 20.0 ],
					"text" : "Model name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.402275919914246, 2595.9154052734375, 41.0, 22.0 ],
					"text" : "hands"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1536.0, 1625.0, 180.0, 20.0 ],
					"text" : "Model name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2301.0, 1625.0, 195.0, 20.0 ],
					"text" : "Wekinator classifier listening port"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1896.0, 1625.0, 180.0, 20.0 ],
					"text" : "Wekinator classifier output port"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.402275919914246, 2342.765957355499268, 101.0, 22.0 ],
					"text" : "s automata_input"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-135",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "mubu-knn.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.402275919914246, 2135.9154052734375, 1154.0, 165.859618638788561 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.210528612136841, 2385.0, 1154.0, 165.859618638788561 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 121.5, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 164.210528612136841, 770.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 216.0, 770.0, 63.0, 22.0 ],
					"text" : "closebang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 89.0, 85.0, 1419.0, 953.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 165.0, 35.0, 22.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-131",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.0, 120.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 165.0, 95.0, 22.0 ],
									"text" : "prepend models"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 225.0, 147.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "create_mubu_objects.js",
										"parameter_enable" : 0
									}
,
									"text" : "js create_mubu_objects.js"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 120.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body_DTW"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands_adaboost"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body_DTW"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands_adaboost"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body_DTW"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands_adaboost"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body_off"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body_off"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name full_body_off"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0
									}
,
									"text" : "mubu @embed 0 @name hands"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 50.210528612136841, 800.0, 133.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p create_mubu_objects"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.210528612136841, 770.0, 89.0, 22.0 ],
					"text" : "receive models"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "model_selector.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 20.210528612136841, 831.31582772731781, 869.210545063018799, 70.263128042221069 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.210528612136841, 1215.0, 869.210545063018799, 70.263128042221069 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-81",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "buffer_management.maxpat",
					"numinlets" : 1,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 20.210557579994202, 1251.578953504562378, 870.263147592544556, 448.421046495437622 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.210528612136841, 1635.0, 870.0, 450.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.933288928121328, 2044.701519370079041, 101.0, 22.0 ],
					"text" : "s automata_input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1431.0, 1835.0, 101.0, 22.0 ],
					"text" : "s automata_input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1841.5, 1625.0, 42.0, 22.0 ],
					"text" : "12001"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2252.0, 1625.0, 35.0, 22.0 ],
					"text" : "6449"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1431.0, 1610.0, 88.0, 35.0 ],
					"text" : "hands_adaboost"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-47",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "model_adaboost.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1431.0, 1655.0, 840.0, 165.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.933288928121328, 1847.701519370079041, 42.0, 22.0 ],
					"text" : "12000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1156.933288928121328, 1847.701519370079041, 35.0, 22.0 ],
					"text" : "6448"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.933288928121328, 1847.701519370079041, 57.0, 22.0 ],
					"text" : "full_body"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-53",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "model_dtw.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.933288928121328, 1877.701519370079041, 1155.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.210528612136841, 2205.0, 1155.0, 165.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 277.0, 615.0, 57.0, 22.0 ],
					"text" : "s models"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.5, 150.0, 183.0, 22.0 ],
					"text" : "set full_body full_body_off hands"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.5, 150.0, 519.0, 22.0 ],
					"text" : "set kinect_normalized_selection posenet_normalized_selection handpose_normalized_selection"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-139",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "sign_recorder.maxpat",
					"numinlets" : 1,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 20.473705172538757, 892.894744753837585, 870.0, 330.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.210528612136841, 1290.0, 870.0, 330.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 16.5, 120.0, 81.0, 22.0 ],
					"text" : "loadpercent 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 537.5, 615.0, 78.0, 22.0 ],
					"text" : "s input_sizes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 615.0, 50.0, 22.0 ],
					"text" : "s inputs"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-24",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "input_manager.maxpat",
					"numinlets" : 2,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 16.5, 180.0, 540.0, 420.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 120.0, 540.0, 420.0 ],
					"varname" : "26052020_input_manager",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, -314.0, 66.0, 21.0 ],
					"text" : "loadmess 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-168",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 169.0, -278.5, 149.0, 19.0 ],
					"text" : "time in seconds to 100%"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-171",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 119.0, -278.5, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 59.0, -197.5, 33.0, 21.0 ],
					"text" : "* 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 318.0, -53.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 318.0, -95.0, 92.0, 21.0 ],
					"text" : "loadpercent 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 297.0, -53.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 297.0, -117.0, 86.0, 21.0 ],
					"text" : "loadpercent 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 276.0, -53.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 276.0, -139.0, 86.0, 21.0 ],
					"text" : "loadpercent 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 255.0, -53.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 255.0, -161.0, 86.0, 21.0 ],
					"text" : "loadpercent 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 234.0, -53.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 234.0, -182.0, 79.0, 21.0 ],
					"text" : "loadpercent 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 213.0, -53.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 213.0, -204.0, 77.0, 21.0 ],
					"text" : "loadpercent 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-206",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, -314.0, 56.0, 21.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-207",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, -278.5, 56.0, 19.0 ],
					"text" : "initialize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, -288.0, 38.0, 38.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 80.0, -69.0, 61.0, 21.0 ],
					"text" : "t 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 15.0, -120.0, 84.0, 21.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 80.0, -94.0, 47.0, 21.0 ],
					"text" : "sel 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-212",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, -22.0, 111.0, 21.0 ],
					"text" : "s loadpercent_value"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-213",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, -53.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 15.0, -240.0, 95.0, 21.0 ],
					"text" : "t 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 15.0, -145.0, 120.333336000000003, 21.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, -204.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-246",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, -174.0, 67.0, 21.0 ],
					"text" : "qmetro 100"
				}

			}
, 			{
				"box" : 				{
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-186",
					"linecount" : 15,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1191.0, 1877.701519370079041, 1606.70212721824646, 224.0 ],
					"text" : "Wekinator is an external software that is not part of Max/MSP but communicates in real-time with OSC.\nIt can be downloaded from here: http://www.wekinator.org/\n\n1) Start Wekinator.\n2) Set the listening port to 6448 (default on Wekinator) and click \"start listening\"\n3) Set the OSC input address to /wek/inputs (default)\n4) Change the number of inputs (#inputs) to match the size of your input in this patch, as defined in the first layer. For instance, with PoseNet, there are two features per joint (X and Y coordinates) so #inputs = #joints*2\n5) Change the Wekinator output type to \"All Dynamic Time Warping\" with N = <the size of your dictionary of signs> gestures types. It probably does not matter if you specify a greater amount of types, so you can also use any sufficiently large N if you do not know how many signs it should recognize; ultimately, Wekinator will simply never match the signs to those classes.\n6) Set the ouput port to 12000 (default) and click next.\n7) If any input is running, make sure that the \"OSC In\" indicator of Wekinator is green. If it is yellow, try to open the view/OSC input status window and restart listening to the OSC. If it is red, check that the size of your input in Max matches the #input parameter of Wekinator.\n8) You can now push the \"train wekinator\" button in box 3.1. The number of examples for each sign should go from 1 to X in wekinator.\n9) Once the training is done after a few seconds, you can press the \"run\" button in wekinator to start classifying your live input.\n10) To avoid false positive, a threshold in DTW distance is necessary. In case that too many false positives are recognized, decrease the value (0 is the minimum). In case your signs are hardly recognized, try increasing the threshold a bit. Typical values are 3-8 for well-trained, performant scenarios, 8-15 if you need the classifier to be more sensitive, at the expense of reliability."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.56078431372549 ],
					"fontface" : 1,
					"fontname" : "Bebas Neue",
					"fontsize" : 72.0,
					"id" : "obj-185",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1712.765957355499268, 1154.339523669332266, 78.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.210528612136841, 2100.0, 1154.339523669332266, 78.0 ],
					"text" : "3. Classification layer"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.56078431372549 ],
					"fontface" : 1,
					"fontname" : "Bebas Neue",
					"fontsize" : 72.0,
					"id" : "obj-180",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 665.0, 2026.0, 78.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.210528612136841, 1110.0, 1576.0, 78.0 ],
					"text" : "2. Sign dictionary, database and training layer"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.56078431372549 ],
					"fontface" : 1,
					"fontname" : "Bebas Neue",
					"fontsize" : 72.0,
					"id" : "obj-179",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 2026.0, 78.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 1260.0, 78.0 ],
					"text" : "1. Input layer"
				}

			}
, 			{
				"box" : 				{
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-176",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 570.0, 120.0, 215.0, 195.0 ],
					"text" : "The role of the input routing is to allow you to add your own inputs and your own models within the pipeline.\n\nThe builtin inputs for \n\nImportant conventions:\n- motion tracking data must be sent through a \"send <input_name>\" object\n- the size of the data through a \"send <input_name>_size\" object"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.933333333333333, 0.192156862745098, 0.564705882352941, 0.28 ],
					"id" : "obj-51",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1191.0, 2166.775023912226061, 180.0, 88.224976087773939 ],
					"presentation" : 1,
					"presentation_rect" : [ 1185.0, 2386.775023912226061, 180.0, 88.224976087773939 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 0,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"order" : 3,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 2,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 0,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 1,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 0,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 2,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 1 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 3 ],
					"midpoints" : [ 89.5, -33.0, 149.375, -33.0, 149.375, -156.0, 100.500001999999995, -156.0 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"midpoints" : [ 131.5, -43.0, 162.0, -43.0, 162.0, -214.0, 24.5, -214.0 ],
					"source" : [ "obj-209", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"source" : [ "obj-210", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"source" : [ "obj-211", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 3 ],
					"source" : [ "obj-228", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 0 ],
					"source" : [ "obj-240", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 2 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 2 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "loadpercent.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "input_manager.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "routing_matrix.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "side_text.js",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "input_model_routing.js",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sign_recorder.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "copy_lace_list.js",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "label_list.js",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "model_dtw.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "model_adaboost.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "buffer_management.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "buffer_management_script.js",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "filter_empty_string.js",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "model_selector.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "create_mubu_objects.js",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mubu-knn.maxpat",
				"bootpath" : "~/Desktop/YORK2020/IM-EAO/skeletime/soundpainting-signs-gestures-recognition/Main_patch",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.knn.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-177", "obj-189", "obj-191", "obj-193", "obj-200", "obj-203", "obj-188", "obj-209", "obj-211", "obj-190", "obj-210", "obj-192", "obj-239", "obj-213", "obj-194", "obj-26", "obj-174", "obj-205", "obj-240", "obj-228", "obj-208", "obj-207", "obj-171", "obj-168", "obj-206", "obj-165", "obj-212" ]
			}
, 			{
				"boxes" : [ "obj-147", "obj-30", "obj-47", "obj-141", "obj-11", "obj-138", "obj-55", "obj-28", "obj-140" ]
			}
 ],
		"styles" : [ 			{
				"name" : "orjan style",
				"default" : 				{
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
