.class public Lcom/ui/LapseIt/project/InfoView;
.super Landroid/app/Activity;
.source "InfoView.java"


# instance fields
.field private adsBox:Landroid/widget/RelativeLayout;

.field private backwardsCheck:Landroid/widget/CheckBox;

.field private dateText:Landroid/widget/TextView;

.field editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

.field private extras:Landroid/os/Bundle;

.field private flipXCheck:Landroid/widget/CheckBox;

.field private flipYCheck:Landroid/widget/CheckBox;

.field frameRate:I

.field private framesText:Landroid/widget/TextView;

.field private list:Landroid/content/DialogInterface$OnClickListener;

.field loopChangedHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private loopCheck:Landroid/widget/CheckBox;

.field private mId:J

.field private resolutionText:Landroid/widget/TextView;

.field private titleInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 248
    new-instance v0, Lcom/ui/LapseIt/project/InfoView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/InfoView$1;-><init>(Lcom/ui/LapseIt/project/InfoView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/InfoView;->list:Landroid/content/DialogInterface$OnClickListener;

    .line 264
    new-instance v0, Lcom/ui/LapseIt/project/InfoView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/InfoView$2;-><init>(Lcom/ui/LapseIt/project/InfoView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/InfoView;->loopChangedHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 291
    new-instance v0, Lcom/ui/LapseIt/project/InfoView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/InfoView$3;-><init>(Lcom/ui/LapseIt/project/InfoView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/InfoView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/InfoView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ui/LapseIt/project/InfoView;->framesText:Landroid/widget/TextView;

    return-object v0
.end method

.method private buildFPSDialog()V
    .locals 4

    .prologue
    .line 235
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Lapse It and time-lapse in general sometimes requires high non-standard frame-rates rendering for some scenes, unfortunately Android has a codec restriction for playing vids with more than 30 fps, so your video may become unplayable when using the native player, if you want to watch it, you will have to use an alternative player app, a computer or share and watch in the web."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    const-string v2, "I understand"

    iget-object v3, p0, Lcom/ui/LapseIt/project/InfoView;->list:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 47
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f03000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->setContentView(I)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/InfoView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->extras:Landroid/os/Bundle;

    .line 78
    const v2, 0x7f0b0034

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->adsBox:Landroid/widget/RelativeLayout;

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->adsBox:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->adsBox:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/ui/LapseIt/project/InfoView$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/ui/LapseIt/project/InfoView$4;-><init>(Lcom/ui/LapseIt/project/InfoView;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_0
    const v2, 0x7f0b002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->titleInput:Landroid/widget/EditText;

    .line 107
    const v2, 0x7f0b0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->dateText:Landroid/widget/TextView;

    .line 109
    const v2, 0x7f0b0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->framesText:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f0b0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->resolutionText:Landroid/widget/TextView;

    .line 112
    const v2, 0x7f0b002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->loopCheck:Landroid/widget/CheckBox;

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->loopCheck:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/InfoView;->loopChangedHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    const v2, 0x7f0b002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->flipXCheck:Landroid/widget/CheckBox;

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->flipXCheck:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/InfoView;->loopChangedHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    const v2, 0x7f0b002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->flipYCheck:Landroid/widget/CheckBox;

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->flipYCheck:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/InfoView;->loopChangedHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    const v2, 0x7f0b002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->backwardsCheck:Landroid/widget/CheckBox;

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->backwardsCheck:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/InfoView;->loopChangedHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    invoke-static {}, Lcom/ui/LapseIt/Main;->isFullVersion()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->backwardsCheck:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->extras:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/ui/LapseIt/project/InfoView;->mId:J

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->extras:Landroid/os/Bundle;

    const-string v5, "timestamp"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    .line 128
    .local v31, timestamp:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->extras:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 129
    .local v33, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->extras:Landroid/os/Bundle;

    const-string v5, "directory"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, directory:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->extras:Landroid/os/Bundle;

    const-string v5, "resolution"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 132
    .local v30, resolution:Ljava/lang/String;
    const-string v2, "fullsensor"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const-string v30, "Full Sensor"

    .line 136
    :cond_1
    if-nez v9, :cond_3

    .line 222
    :goto_1
    return-void

    .line 103
    .end local v9           #directory:Ljava/lang/String;
    .end local v30           #resolution:Ljava/lang/String;
    .end local v31           #timestamp:J
    .end local v33           #title:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->adsBox:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 140
    .restart local v9       #directory:Ljava/lang/String;
    .restart local v30       #resolution:Ljava/lang/String;
    .restart local v31       #timestamp:J
    .restart local v33       #title:Ljava/lang/String;
    :cond_3
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v12, fileDir:Ljava/io/File;
    const/16 v29, 0x0

    .line 143
    .local v29, projectSize:I
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v6, :cond_6

    .line 149
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->titleInput:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/InfoView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 150
    if-eqz v33, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->titleInput:Landroid/widget/EditText;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_5
    const/4 v2, 0x2

    const/4 v5, 0x3

    invoke-static {v2, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v31

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, formatedDate:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->dateText:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 159
    sget-object v22, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    .line 175
    .local v22, framesString:Ljava/lang/String;
    :goto_3
    :try_start_0
    new-instance v19, Lorg/json/JSONArray;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 177
    .local v19, framesInfo:Lorg/json/JSONArray;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 178
    .local v20, framesLength:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/InfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 182
    .local v21, framesMiddle:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "timestamp"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 183
    .local v13, firstFrameTime:J
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "timestamp"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 184
    .local v24, lastFrameTime:J
    sub-long v34, v24, v13

    .line 186
    .local v34, totalTime:J
    move-wide/from16 v0, v34

    long-to-double v5, v0

    const-wide v43, 0x408f400000000000L

    div-double v40, v5, v43

    .line 187
    .local v40, totalTimeSecs:D
    const-wide/high16 v5, 0x404e

    div-double v38, v40, v5

    .line 188
    .local v38, totalTimeMinutes:D
    const-wide/high16 v5, 0x404e

    div-double v36, v38, v5

    .line 190
    .local v36, totalTimeHours:D
    const-wide/high16 v5, 0x3ff0

    cmpl-double v2, v36, v5

    if-lez v2, :cond_8

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "h"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v5, 0x404e

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v43

    mul-double v5, v5, v43

    sub-double v5, v38, v5

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "m"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 198
    .local v23, framesTime:Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v16

    .line 200
    .local v16, frameSpan:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3fc0

    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x12

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 201
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3fc0

    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x12

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->framesText:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v13           #firstFrameTime:J
    .end local v16           #frameSpan:Landroid/text/SpannableString;
    .end local v19           #framesInfo:Lorg/json/JSONArray;
    .end local v20           #framesLength:Ljava/lang/String;
    .end local v21           #framesMiddle:Ljava/lang/String;
    .end local v23           #framesTime:Ljava/lang/String;
    .end local v24           #lastFrameTime:J
    .end local v34           #totalTime:J
    .end local v36           #totalTimeHours:D
    .end local v38           #totalTimeMinutes:D
    .end local v40           #totalTimeSecs:D
    :goto_5
    move/from16 v0, v29

    int-to-double v5, v0

    const-wide v43, 0x408f400000000000L

    div-double v5, v5, v43

    const-wide v43, 0x408f400000000000L

    div-double v27, v5, v43

    .line 208
    .local v27, numberInMb:D
    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v26

    .line 209
    .local v26, numberFormat:Ljava/text/NumberFormat;
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/InfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0800d5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 211
    .local v42, using:Ljava/lang/String;
    const-string v2, "RESXXX"

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    .line 212
    const-string v2, "MBXXX"

    invoke-virtual/range {v26 .. v28}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v42

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->resolutionText:Landroid/widget/TextView;

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v5, Lcom/ui/LapseIt/project/InfoView$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/ui/LapseIt/project/InfoView$5;-><init>(Lcom/ui/LapseIt/project/InfoView;)V

    .line 221
    const-wide/16 v6, 0x7d0

    .line 216
    invoke-virtual {v2, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 144
    .end local v15           #formatedDate:Ljava/lang/String;
    .end local v22           #framesString:Ljava/lang/String;
    .end local v26           #numberFormat:Ljava/text/NumberFormat;
    .end local v27           #numberInMb:D
    .end local v42           #using:Ljava/lang/String;
    :cond_6
    aget-object v11, v5, v2

    .line 145
    .local v11, file:Ljava/io/File;
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v43, v0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v45

    add-long v43, v43, v45

    move-wide/from16 v0, v43

    long-to-int v0, v0

    move/from16 v29, v0

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 161
    .end local v11           #file:Ljava/io/File;
    .restart local v15       #formatedDate:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/InfoView;->extras:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 163
    .local v17, framesId:J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 164
    const-string v5, "framesinfo"

    aput-object v5, v4, v2

    .line 167
    .local v4, projection:[Ljava/lang/String;
    sget-object v2, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/InfoView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 169
    .local v8, cur:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    const-string v2, "framesinfo"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #framesString:Ljava/lang/String;
    goto/16 :goto_3

    .line 192
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v8           #cur:Landroid/database/Cursor;
    .end local v17           #framesId:J
    .restart local v13       #firstFrameTime:J
    .restart local v19       #framesInfo:Lorg/json/JSONArray;
    .restart local v20       #framesLength:Ljava/lang/String;
    .restart local v21       #framesMiddle:Ljava/lang/String;
    .restart local v24       #lastFrameTime:J
    .restart local v34       #totalTime:J
    .restart local v36       #totalTimeHours:D
    .restart local v38       #totalTimeMinutes:D
    .restart local v40       #totalTimeSecs:D
    :cond_8
    const-wide/high16 v5, 0x3ff0

    cmpg-double v2, v36, v5

    if-gez v2, :cond_9

    const-wide/high16 v5, 0x3ff0

    cmpl-double v2, v38, v5

    if-lez v2, :cond_9

    .line 193
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "m"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v5, 0x404e

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D

    move-result-wide v43

    mul-double v5, v5, v43

    sub-double v5, v40, v5

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .restart local v23       #framesTime:Ljava/lang/String;
    goto/16 :goto_4

    .line 195
    .end local v23           #framesTime:Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " secs"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v23

    .restart local v23       #framesTime:Ljava/lang/String;
    goto/16 :goto_4

    .line 203
    .end local v13           #firstFrameTime:J
    .end local v19           #framesInfo:Lorg/json/JSONArray;
    .end local v20           #framesLength:Ljava/lang/String;
    .end local v21           #framesMiddle:Ljava/lang/String;
    .end local v23           #framesTime:Ljava/lang/String;
    .end local v24           #lastFrameTime:J
    .end local v34           #totalTime:J
    .end local v36           #totalTimeHours:D
    .end local v38           #totalTimeMinutes:D
    .end local v40           #totalTimeSecs:D
    :catch_0
    move-exception v10

    .line 204
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/InfoView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, cResolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/ui/LapseIt/project/InfoView;->titleInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 327
    const-string v2, "title"

    iget-object v3, p0, Lcom/ui/LapseIt/project/InfoView;->titleInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 331
    sget-object v2, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ui/LapseIt/project/InfoView;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 335
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/InfoView;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/project/ProjectView;

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->INFO:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/ProjectView;->setCurrentTab(Lcom/ui/LapseIt/project/ProjectView$TABS;)V

    .line 314
    iget-object v0, p0, Lcom/ui/LapseIt/project/InfoView;->titleInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 315
    iget-object v0, p0, Lcom/ui/LapseIt/project/InfoView;->framesText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 67
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 228
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 229
    return-void
.end method
