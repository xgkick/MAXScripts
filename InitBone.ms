try(DestroyDialog InitBone) catch()

global SelectedBone

rollout InitBone "Make Identity Bone"
(
    -- ------------- Dialogs
	group "About"
	(
		label ST_Static0 "선택한 Bone의 위치를 원점(Origin)으로 보내는 툴입니다." align:#left
		label ST_Static1 "과정에서 Animation Key를 가지고 있다면 함께 변환합니다." align:#left
	)
	
	group "Rotation"
	(
		PickButton PICK_Bone "Pick Bone" message:"원점으로 보낼 Bone을 선택해 주세요."
	)

    label ST_Static ""
	Button BTN_Init "Init!" width:180
    -- -------- End Of Dialogs

    function MakeIdentity =
    (
        if SelectedBone == undefined do 
        (
            print "Bone이 선택되지 않았습니다."
            return false;
        )

        bone_tm = SelectedBone.transform;
        controller = SelectedBone.transform.controller;

        to_oritin = inverse bone_tm;

        horz_controller = com_ctrl.horizontal.controller;
		vert_controller = com_ctrl.vertical.controller;
		turn_controller = com_ctrl.turning.controller;

        with animate on
		(
			
			-- Root를 설정한다.
			for key in keys do
			(
				SetRootComKey key;
			)
		)

        SelectedBone.transform = bone_tm * to_origin;
    )

    on PICK_RootTarget picked bone do
    (
        if bone != undefined do 
        (
            bone.wirecolor = red
            SelectedBone = bone.name
        )
    )

    on BTN_Init pressed do
	(
		MakeIdentity
	)
)

createDialog RootKeyGen 200 200 style:#(#style_titlebar, #style_border, #style_toolwindow, #style_resizing, #style_sysmenu)