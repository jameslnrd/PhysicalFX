{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 483.0, 201.0, 1134.0, 650.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 708.0, 566.0, 55.0, 22.0 ],
					"text" : "plugout~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 644.0, 299.0, 48.0, 22.0 ],
					"text" : "plugin~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 767.0, 305.0, 45.0, 22.0 ],
					"text" : "open 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 708.0, 412.0, 48.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.0, 5.0, 48.0, 165.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "live.gain~"
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 708.0, 367.0, 117.0, 22.0 ],
					"text" : "poly~ noiseSynth 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 971.0, 189.0, 107.0, 22.0 ],
					"text" : "scale 0. 127 0 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 971.0, 236.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 254.0, 91.0, 79.0, 22.0 ],
					"text" : "simSpeed $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 971.0, 32.0, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 254.0, 5.0, 17.0, 74.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 918.0, 273.0, 96.0, 35.0 ],
					"text" : "frictionVal 0.007874"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 830.0, 195.0, 110.0, 22.0 ],
					"text" : "scale 0. 127. 0. 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 830.0, 230.0, 78.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 216.0, 123.0, 78.0, 22.0 ],
					"text" : "frictionVal $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 830.0, 32.0, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 221.5, 5.0, 19.0, 108.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 705.0, 195.0, 95.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.0, 153.0, 95.0, 22.0 ],
					"text" : "repulsionDist $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 705.0, 32.0, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.0, 5.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 212.0, 66.0, 31.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 277.5, 57.0, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 66.0, 32.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 277.5, 31.0, 32.0, 22.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 551.0, 550.0, 50.0, 76.0 ],
					"text" : "0.760925 0.292683 0 0 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 539.0, 469.0, 75.0, 22.0 ],
					"text" : "route mouse"
				}

			}
, 			{
				"box" : 				{
					"displayknob" : 1,
					"id" : "obj-13",
					"maxclass" : "nodes",
					"nodenumber" : 60,
					"nodesnames" : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60" ],
					"nsize" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 169.0, 121.0, 389.0, 328.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 5.0, 170.0, 170.0 ],
					"xplace" : [ 0.773407220840454, 0.732970774173737, 0.778044998645782, 0.671101689338684, 0.728963375091553, 0.735764980316162, 0.735892653465271, 0.74067348241806, 0.55104398727417, 0.760716438293457, 0.749214231967926, 0.722269892692566, 0.797215342521667, 0.784506678581238, 0.751736402511597, 0.795290052890778, 0.514059901237488, 0.773800015449524, 0.80556732416153, 0.744798362255096, 0.781408369541168, 0.790140807628632, 0.721456289291382, 0.744574725627899, 0.750960230827332, 0.800057947635651, 0.777804493904114, 0.770296812057495, 0.776034474372864, 0.808557450771332, 0.721876800060272, 0.748636424541473, 0.766532957553864, 0.799081206321716, 0.781880855560303, 0.746836125850677, 0.724391162395477, 0.39281639456749, 0.800395488739014, 0.725295424461365, 0.749097228050232, 0.792824923992157, 0.758574903011322, 0.760214149951935, 0.527201116085052, 0.729999542236328, 0.784899294376373, 0.806380927562714, 0.487870156764984, 0.462586283683777, 0.767971634864807, 0.787338554859161, 0.754993498325348, 0.797682464122772, 0.7726731300354, 0.737360954284668, 0.750218510627747, 0.70045793056488, 0.764297246932983, 0.762244462966919 ],
					"yplace" : [ 0.253667593002319, 0.264338672161102, 0.328561544418335, 0.526903033256531, 0.270415872335434, 0.306702941656113, 0.323317021131516, 0.288605630397797, 0.577643990516663, 0.332358449697495, 0.424838095903397, 0.292760670185089, 0.276052415370941, 0.324714660644531, 0.311690926551819, 0.312294542789459, 0.665701448917389, 0.314022779464722, 0.626704752445221, 0.324756115674973, 0.300026655197144, 0.317306727170944, 0.283612757921219, 0.628070712089539, 0.252969682216644, 0.283090084791183, 0.256270468235016, 0.331629782915115, 0.278991132974625, 0.560960114002228, 0.299720883369446, 0.279452860355377, 0.3043232858181, 0.290783613920212, 0.433439940214157, 0.258969932794571, 0.308309435844421, 0.686300575733185, 0.297801464796066, 0.277045667171478, 0.298028647899628, 0.270529121160507, 0.252503573894501, 0.315066426992416, 0.506310760974884, 0.316592693328857, 0.264810532331467, 0.700022041797638, 0.561053335666656, 0.677062034606934, 0.283556967973709, 0.262805134057999, 0.285784035921097, 0.304209589958191, 0.293573707342148, 0.260324835777283, 0.331638365983963, 0.62856388092041, 0.254070997238159, 0.274634748697281 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 348.5, 32.0, 214.0, 22.0 ],
					"text" : "setnode 60 0.762244 0.274635 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.0, 32.0, 59.0, 22.0 ],
					"text" : "r receiver"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 48.0, 66.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 281.5, 5.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 98.0, 66.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 49.0, 113.0, 107.0, 22.0 ],
					"text" : "mxj attractorModel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 43.0, 30.0, 148.0, 22.0 ],
					"text" : "mxj quickie attractorModel"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 548.5, 492.0, 45.0, 492.0, 45.0, 108.0, 58.5, 108.0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 980.5, 261.0, 957.0, 261.0, 957.0, 174.0, 570.0, 174.0, 570.0, 99.0, 58.5, 99.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 714.5, 219.0, 570.0, 219.0, 570.0, 99.0, 58.5, 99.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 839.5, 255.0, 570.0, 255.0, 570.0, 99.0, 58.5, 99.0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"midpoints" : [ 270.5, 65.0, 335.0, 65.0, 335.0, 17.0, 553.0, 17.0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-25" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "noiseSynth.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/PhysicalFilter_MXJ/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mxj.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
