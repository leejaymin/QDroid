.class public Lkr/co/medinbiz/widget/sos/SosMenu;
.super Lkr/co/medinbiz/widget/sos/SosCommon;
.source "SosMenu.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/sos/SosMenu$MyOnClickListener;
    }
.end annotation


# instance fields
.field private add:Landroid/widget/TextView;

.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private isLocaiton:Z

.field private latitude:D

.field private locManager:Landroid/location/LocationManager;

.field private longitude:D

.field private mAddress:Ljava/lang/String;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Lkr/co/medinbiz/widget/sos/SosCommon;-><init>()V

    .line 253
    new-instance v1, Lkr/co/medinbiz/widget/sos/SosMenu$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/sos/SosMenu$1;-><init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->handler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    .line 54
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 56
    sget v1, Lkr/co/medinbiz/R$layout;->sos_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->widget:Landroid/view/View;

    .line 61
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->add:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->add:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->phonebook_regi:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 63
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 68
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getGPSused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-direct {p0}, Lkr/co/medinbiz/widget/sos/SosMenu;->gpsInit()V

    .line 77
    :goto_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->sms_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    new-instance v2, Lkr/co/medinbiz/widget/sos/SosMenu$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/sos/SosMenu$2;-><init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 58
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->sos:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->widget:Landroid/view/View;

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    sget v3, Lkr/co/medinbiz/R$string;->gps_agree:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lkr/co/medinbiz/widget/sos/SosMenu$MyOnClickListener;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/widget/sos/SosMenu$MyOnClickListener;-><init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V

    invoke-static {v1, v2, v3}, Lkr/co/medinbiz/view/DialogGroup;->twoBtnMyListenerDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/sos/SosMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lkr/co/medinbiz/widget/sos/SosMenu;->gpsInit()V

    return-void
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/sos/SosMenu;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/sos/SosMenu;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lkr/co/medinbiz/widget/sos/SosMenu;->sendSmsMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/sos/SosMenu;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->isLocaiton:Z

    return v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->add:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/sos/SosMenu;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private addressChange(DD)V
    .locals 9
    .parameter "lat"
    .parameter "log"

    .prologue
    .line 194
    new-instance v8, Lkr/co/medinbiz/helper/HttpManager;

    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    .line 195
    .local v8, parser:Lkr/co/medinbiz/helper/HttpManager;
    iput-wide p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->latitude:D

    .line 196
    iput-wide p3, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->longitude:D

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 200
    .local v0, gc:Landroid/location/Geocoder;
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v6

    .line 201
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->addressSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mAddress:Ljava/lang/String;

    .line 207
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->isLocaiton:Z

    .line 208
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->add:Landroid/widget/TextView;

    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_1
    return-void

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v8, v1}, Lkr/co/medinbiz/helper/HttpManager;->geoCoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->addressSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v7

    .line 210
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private addressSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "address"

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, ar:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 218
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private gpsInit()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    const-string v2, ""

    .line 104
    iget-object v3, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->message_getting_location_wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v0, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->dialog:Landroid/app/ProgressDialog;

    .line 106
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->locManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/sos/SosMenu;->locationManagerRemove()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->locManager:Landroid/location/LocationManager;

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->isLocaiton:Z

    .line 111
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    .line 112
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 111
    iput-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->locManager:Landroid/location/LocationManager;

    .line 113
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 114
    .local v6, criteria:Landroid/location/Criteria;
    invoke-virtual {v6, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 115
    invoke-virtual {v6, v5}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 116
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->locManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, bestProvider:Ljava/lang/String;
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->locManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 118
    new-instance v0, Lkr/co/medinbiz/widget/sos/SosMenu$3;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/sos/SosMenu$3;-><init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V

    .line 133
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/sos/SosMenu$3;->start()V

    .line 134
    invoke-direct {p0}, Lkr/co/medinbiz/widget/sos/SosMenu;->gpsTimeOutStart()V

    .line 135
    return-void
.end method

.method private gpsTimeOutStart()V
    .locals 6

    .prologue
    .line 138
    new-instance v0, Lkr/co/medinbiz/widget/sos/SosMenu$4;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkr/co/medinbiz/widget/sos/SosMenu$4;-><init>(Lkr/co/medinbiz/widget/sos/SosMenu;JJ)V

    .line 190
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/sos/SosMenu$4;->start()Landroid/os/CountDownTimer;

    .line 191
    return-void
.end method

.method private sendSmsMessage()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 226
    iget-object v4, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->message_sos:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 227
    iget-object v9, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mAddress:Ljava/lang/String;

    aput-object v9, v5, v1

    iget-wide v9, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v9, 0x2

    iget-wide v10, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 225
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, message:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 230
    .local v0, smsManager:Landroid/telephony/SmsManager;
    new-instance v4, Lkr/co/medinbiz/helper/DataBaseManager;

    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lkr/co/medinbiz/helper/DataBaseManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/DataBaseManager;->getSosAllRow()Ljava/util/ArrayList;

    move-result-object v7

    .line 231
    .local v7, sos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/SosData;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 232
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v8

    .line 243
    :goto_1
    return v1

    .line 232
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/SosData;

    .line 233
    .local v6, datas:Lkr/co/medinbiz/dto/SosData;
    iget-object v1, v6, Lkr/co/medinbiz/dto/SosData;->number:Ljava/lang/String;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 238
    .end local v6           #datas:Lkr/co/medinbiz/dto/SosData;
    :cond_1
    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 239
    sget v5, Lkr/co/medinbiz/R$string;->sos_send_error:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-static {v2, v4}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->widget:Landroid/view/View;

    return-object v0
.end method

.method public locationManagerRemove()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->locManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->locManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu;->isLocaiton:Z

    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 284
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->phonebook_regi:I

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/sos/SosMenu;->setPhoneBookWidget()V

    .line 287
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lkr/co/medinbiz/widget/sos/SosMenu;->addressChange(DD)V

    .line 265
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 270
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 275
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 279
    return-void
.end method
