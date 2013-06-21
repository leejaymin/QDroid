.class public Lcom/fleapapa/helper/Helper;
.super Landroid/app/Activity;
.source "Helper.java"


# static fields
.field static cid:I


# instance fields
.field private final WHO:Ljava/lang/String;

.field delayExit:Z

.field firstTime:Z

.field flea:Lcom/fleapapa/helper/Flea;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/Helper;->WHO:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fleapapa/helper/Helper;->firstTime:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 11

    .prologue
    const-string v10, ""

    .line 114
    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    move-object v1, v10

    .line 124
    :goto_0
    return-object v1

    .line 115
    :cond_1
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, go:Landroid/location/Geocoder;
    :try_start_0
    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v9

    .line 118
    .local v9, loc:Landroid/location/Location;
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 119
    .local v7, alist:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 120
    .local v6, addr:Landroid/location/Address;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 122
    .end local v6           #addr:Landroid/location/Address;
    .end local v7           #alist:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #loc:Landroid/location/Location;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 123
    .local v8, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/Helper;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".getCity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, ""

    move-object v1, v10

    goto :goto_0
.end method

.method goPush(Z)V
    .locals 3
    .parameter "signin"

    .prologue
    const/4 v2, 0x1

    .line 133
    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/fleapapa/util/My;->isGuest:Z

    if-nez v1, :cond_1

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/CallTabs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cid"

    sget v2, Lcom/fleapapa/helper/Helper;->cid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Helper;->startActivity(Landroid/content/Intent;)V

    .line 138
    const/4 v1, 0x0

    sput v1, Lcom/fleapapa/helper/Helper;->cid:I

    .line 145
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-eqz p1, :cond_0

    .line 142
    sput-boolean v2, Lcom/fleapapa/helper/Signin;->noGuest:Z

    .line 143
    const/4 v1, 0x4

    invoke-static {p0, v2, v1}, Lcom/fleapapa/helper/Signin;->sign_in_out(Landroid/app/Activity;ZI)V

    goto :goto_0
.end method

.method goSelector(Z)V
    .locals 2
    .parameter "helpTheMost"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/InterestSelector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helpTheMost"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Helper;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Helper;->goSelector(Z)V

    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Helper;->goPush(Z)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-virtual {p0}, Lcom/fleapapa/helper/Helper;->showSignStatus()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const v10, 0x7f08008d

    const v9, 0x7f08008c

    const v8, 0x7f08008b

    const/4 v7, 0x0

    const v6, 0x7f08008e

    .line 27
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/Helper;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/Helper;->requestWindowFeature(I)Z

    .line 31
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/Helper;->setContentView(I)V

    .line 33
    sget-object v1, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/fleapapa/helper/Helper;->getCity()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    .line 34
    :cond_0
    invoke-virtual {p0, v9}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    new-instance v2, Lcom/fleapapa/helper/Helper$1;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/Helper$1;-><init>(Lcom/fleapapa/helper/Helper;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    invoke-static {}, Lcom/fleapapa/util/My;->bootstrapHours()J

    move-result-wide v2

    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    :goto_0
    mul-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setVisibility(I)V

    .line 43
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    new-instance v2, Lcom/fleapapa/helper/Helper$2;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/Helper$2;-><init>(Lcom/fleapapa/helper/Helper;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    new-instance v2, Lcom/fleapapa/helper/Helper$3;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/Helper$3;-><init>(Lcom/fleapapa/helper/Helper;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0, v10}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    new-instance v2, Lcom/fleapapa/helper/Helper$4;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/Helper$4;-><init>(Lcom/fleapapa/helper/Helper;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0, v10}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    const v2, 0x7f0600a4

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/Helper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v9}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/Helper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    const v2, 0x7f0600aa

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/Helper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    const v2, 0x7f0600ac

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/Helper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/fleapapa/helper/Monitor;->start(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/fleapapa/helper/Helper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cid"

    sget v2, Lcom/fleapapa/helper/Helper;->cid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/fleapapa/helper/Helper;->cid:I

    .line 76
    return-void

    .line 42
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_2
    move v2, v7

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/Helper;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-boolean v0, Lcom/fleapapa/util/My;->isGuest:Z

    if-eqz v0, :cond_0

    sput v3, Lcom/fleapapa/util/My;->uid:I

    .line 109
    :cond_0
    sput-boolean v3, Lcom/fleapapa/util/My;->isGuest:Z

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/Helper;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x7f08008b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/Helper;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gps"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v2}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v2}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/fleapapa/helper/Helper;->delayExit:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/fleapapa/helper/Helper;->finish()V

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/Helper;->showSignStatus()V

    .line 100
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/fleapapa/helper/Helper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "push"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    invoke-virtual {v0}, Lcom/fleapapa/util/MyImageButton;->performClick()Z

    .line 88
    iput-boolean v5, p0, Lcom/fleapapa/helper/Helper;->delayExit:Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {}, Lcom/fleapapa/util/My;->bootstrapHours()J

    move-result-wide v0

    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    :goto_1
    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 95
    iget-boolean v0, p0, Lcom/fleapapa/helper/Helper;->firstTime:Z

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    invoke-virtual {v0}, Lcom/fleapapa/util/MyImageButton;->performClick()Z

    .line 97
    :cond_3
    iput-boolean v4, p0, Lcom/fleapapa/helper/Helper;->firstTime:Z

    goto :goto_0

    .line 93
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method

.method showSignStatus()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Helper;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/util/MyImageButton;

    sget v0, Lcom/fleapapa/util/My;->uid:I

    if-nez v0, :cond_0

    const v0, 0x7f020055

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 156
    return-void

    .line 155
    :cond_0
    const v0, 0x7f020056

    goto :goto_0
.end method
