.class public Lcom/cauly/android/ad/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cauly/android/ad/AdView$DisplayRolling;
    }
.end annotation


# static fields
.field private static SAVE_PATH:Ljava/lang/String;

.field private static adCommon:Lcom/cauly/android/ad/AdCommon;

.field private static adData:Lcom/cauly/android/ad/AdData;

.field private static adHandler:Lcom/cauly/android/ad/AdHandler;

.field private static adLayout:Lcom/cauly/android/ad/AdLayout;

.field static lat:D

.field static lng:D

.field private static reloadTimer:Ljava/util/Timer;

.field private static threadHandler:Landroid/os/Handler;


# instance fields
.field private action:Ljava/lang/String;

.field private adtype:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private allowcall:Ljava/lang/String;

.field private appcode:Ljava/lang/String;

.field private effect:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private gps:Ljava/lang/String;

.field private isReload:Z

.field private lang:Ljava/lang/String;

.field private lm:Landroid/location/LocationManager;

.field private manufacturer:Ljava/lang/String;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cauly/android/ad/Message_Ads;",
            ">;"
        }
    .end annotation
.end field

.field private mobile:Landroid/net/NetworkInfo$State;

.field private model:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private reloadInterval:I

.field public rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

.field private udid:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private wifi:Landroid/net/NetworkInfo$State;

.field private wifiInfo:Landroid/net/wifi/WifiInfo;

.field private wm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sput-object v2, Lcom/cauly/android/ad/AdView;->adData:Lcom/cauly/android/ad/AdData;

    .line 65
    sput-object v2, Lcom/cauly/android/ad/AdView;->adHandler:Lcom/cauly/android/ad/AdHandler;

    .line 66
    sput-object v2, Lcom/cauly/android/ad/AdView;->adCommon:Lcom/cauly/android/ad/AdCommon;

    .line 67
    sput-object v2, Lcom/cauly/android/ad/AdView;->adLayout:Lcom/cauly/android/ad/AdLayout;

    .line 69
    sput-object v2, Lcom/cauly/android/ad/AdView;->threadHandler:Landroid/os/Handler;

    .line 84
    const-wide v0, 0x4042c85a89b951c6L

    sput-wide v0, Lcom/cauly/android/ad/AdView;->lat:D

    .line 85
    const-wide v0, 0x405fbec33f85510dL

    sput-wide v0, Lcom/cauly/android/ad/AdView;->lng:D

    .line 88
    sput-object v2, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cauly/android/ad/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cauly/android/ad/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    .line 90
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cauly/android/ad/AdView;->isReload:Z

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cauly_ad_img/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cauly/android/ad/AdView;->SAVE_PATH:Ljava/lang/String;

    .line 115
    const-string v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    .line 116
    .local v22, display:Landroid/view/Display;
    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getWidth()I

    move-result v29

    .line 117
    .local v29, width:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cauly/android/ad/AdView;->setFocusable(Z)V

    .line 118
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cauly/android/ad/AdView;->setClickable(Z)V

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cauly/android/ad/AdView;->setFocusableInTouchMode(Z)V

    .line 120
    const/high16 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cauly/android/ad/AdView;->setDescendantFocusability(I)V

    .line 121
    if-eqz p2, :cond_4

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://schemas.android.com/apk/res/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, caulyNameSpace:Ljava/lang/String;
    const-string v2, "reloadInterval"

    const/4 v3, 0x0

    .line 125
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    .line 128
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-eqz v2, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-gez v2, :cond_7

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    .line 151
    :cond_0
    :goto_0
    const-string v2, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->action:Ljava/lang/String;

    .line 152
    const-string v2, "appcode"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    .line 153
    const-string v2, "adtype"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->adtype:Ljava/lang/String;

    .line 154
    const-string v2, "gender"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->gender:Ljava/lang/String;

    .line 155
    const-string v2, "age"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    .line 156
    const-string v2, "gps"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    .line 174
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->version:Ljava/lang/String;

    .line 176
    const-string v2, "effect"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->lang:Ljava/lang/String;

    .line 180
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->manufacturer:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->manufacturer:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->manufacturer:Ljava/lang/String;

    .line 182
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->model:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->model:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->model:Ljava/lang/String;

    .line 186
    :try_start_0
    const-string v2, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->wm:Landroid/net/wifi/WifiManager;

    .line 188
    const-string v2, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/ConnectivityManager;

    .line 189
    .local v20, connect:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    .line 190
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->wifi:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wifi:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wifi:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_b

    .line 195
    const-string v2, "-"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    const-string v3, "permission"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wifi:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wifi:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 211
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    .end local v20           #connect:Landroid/net/ConnectivityManager;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 232
    const-string v2, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->lm:Landroid/location/LocationManager;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x43fa

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v27

    .line 237
    .local v27, location:Landroid/location/Location;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Lcom/cauly/android/ad/AdView;->lat:D

    .line 238
    invoke-virtual/range {v27 .. v27}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    sput-wide v2, Lcom/cauly/android/ad/AdView;->lng:D

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/cauly/android/ad/AdView;->lat:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/cauly/android/ad/AdView;->lng:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    .line 246
    .end local v27           #location:Landroid/location/Location;
    :cond_3
    :goto_3
    const-string v2, "allowcall"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->allowcall:Ljava/lang/String;

    .line 249
    .end local v19           #caulyNameSpace:Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/cauly/android/ad/AdView;->checkAttrs()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 250
    new-instance v24, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cauly/DownloadCheck.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v24, file:Ljava/io/File;
    new-instance v21, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cauly/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v21, dir:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    const-string v3, "CAULY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 256
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_f

    .line 258
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 260
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 262
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->createNewFile()Z

    .line 263
    new-instance v26, Ljava/io/FileWriter;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 264
    .local v26, fw:Ljava/io/FileWriter;
    new-instance v18, Ljava/io/BufferedWriter;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 265
    .local v18, bw:Ljava/io/BufferedWriter;
    const-string v2, "True"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->close()V

    .line 267
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileWriter;->close()V

    .line 268
    new-instance v16, Lcom/cauly/android/ad/AdCommon;

    invoke-direct/range {v16 .. v16}, Lcom/cauly/android/ad/AdCommon;-><init>()V

    .line 269
    .local v16, Cm:Lcom/cauly/android/ad/AdCommon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/cauly/android/ad/AdCommon;->Download_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "Cauly Ads"

    const-string v3, "DownLoad Check OK!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    .end local v16           #Cm:Lcom/cauly/android/ad/AdCommon;
    .end local v18           #bw:Ljava/io/BufferedWriter;
    .end local v26           #fw:Ljava/io/FileWriter;
    :cond_5
    :goto_4
    new-instance v2, Lcom/cauly/android/ad/AdData;

    invoke-direct {v2}, Lcom/cauly/android/ad/AdData;-><init>()V

    sput-object v2, Lcom/cauly/android/ad/AdView;->adData:Lcom/cauly/android/ad/AdData;

    .line 302
    new-instance v2, Lcom/cauly/android/ad/AdCommon;

    invoke-direct {v2}, Lcom/cauly/android/ad/AdCommon;-><init>()V

    sput-object v2, Lcom/cauly/android/ad/AdView;->adCommon:Lcom/cauly/android/ad/AdCommon;

    .line 303
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/cauly/android/ad/AdView;->threadHandler:Landroid/os/Handler;

    .line 304
    sget-object v2, Lcom/cauly/android/ad/AdView;->adCommon:Lcom/cauly/android/ad/AdCommon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cauly/android/ad/AdView;->action:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cauly/android/ad/AdView;->adtype:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cauly/android/ad/AdView;->gender:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cauly/android/ad/AdView;->version:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cauly/android/ad/AdView;->lang:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cauly/android/ad/AdView;->provider:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cauly/android/ad/AdView;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cauly/android/ad/AdView;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cauly/android/ad/AdView;->allowcall:Ljava/lang/String;

    invoke-virtual/range {v2 .. v15}, Lcom/cauly/android/ad/AdCommon;->initCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-super/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->adtype:Ljava/lang/String;

    const-string v3, "cpc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 309
    const/16 v2, 0x140

    move/from16 v0, v29

    if-lt v0, v2, :cond_12

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/cauly/android/ad/AdView;->realodAD()V

    .line 325
    .end local v21           #dir:Ljava/io/File;
    .end local v24           #file:Ljava/io/File;
    :cond_6
    :goto_5
    return-void

    .line 134
    .restart local v19       #caulyNameSpace:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_8

    .line 136
    const/16 v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    goto/16 :goto_0

    .line 138
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    const/16 v3, 0x3c

    if-gt v2, v3, :cond_9

    .line 140
    const/16 v2, 0x3c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    goto/16 :goto_0

    .line 142
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    const/16 v3, 0x3c

    if-le v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    const/16 v3, 0x78

    if-gt v2, v3, :cond_a

    .line 144
    const/16 v2, 0x78

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    goto/16 :goto_0

    .line 148
    :cond_a
    const/16 v2, 0x78

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    goto/16 :goto_0

    .line 199
    .restart local v20       #connect:Landroid/net/ConnectivityManager;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 203
    :catch_0
    move-exception v23

    .line 205
    .local v23, e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "permission"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 218
    .end local v20           #connect:Landroid/net/ConnectivityManager;
    .end local v23           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v23

    .line 220
    .restart local v23       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_d

    .line 222
    :cond_c
    const-string v2, "-"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    goto/16 :goto_2

    .line 226
    :cond_d
    const-string v2, "permission"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    goto/16 :goto_2

    .line 241
    .end local v23           #e:Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    goto/16 :goto_3

    .line 275
    .end local v19           #caulyNameSpace:Ljava/lang/String;
    .restart local v21       #dir:Ljava/io/File;
    .restart local v24       #file:Ljava/io/File;
    :cond_f
    :try_start_6
    new-instance v25, Ljava/io/FileReader;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 276
    .local v25, fr:Ljava/io/FileReader;
    new-instance v17, Ljava/io/BufferedReader;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 277
    .local v17, br:Ljava/io/BufferedReader;
    const/16 v28, 0x0

    .line 279
    .local v28, str:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .line 280
    const-string v2, "False"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 282
    new-instance v26, Ljava/io/FileWriter;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 283
    .restart local v26       #fw:Ljava/io/FileWriter;
    new-instance v18, Ljava/io/BufferedWriter;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 284
    .restart local v18       #bw:Ljava/io/BufferedWriter;
    const-string v2, "True"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->close()V

    .line 286
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileWriter;->close()V

    .line 287
    new-instance v16, Lcom/cauly/android/ad/AdCommon;

    invoke-direct/range {v16 .. v16}, Lcom/cauly/android/ad/AdCommon;-><init>()V

    .line 288
    .restart local v16       #Cm:Lcom/cauly/android/ad/AdCommon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/cauly/android/ad/AdCommon;->Download_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "Cauly Ads"

    const-string v3, "DownLoad Check OK!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v16           #Cm:Lcom/cauly/android/ad/AdCommon;
    .end local v18           #bw:Ljava/io/BufferedWriter;
    .end local v26           #fw:Ljava/io/FileWriter;
    :cond_11
    if-nez v28, :cond_10

    .line 292
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 293
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 297
    .end local v17           #br:Ljava/io/BufferedReader;
    .end local v25           #fr:Ljava/io/FileReader;
    .end local v28           #str:Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 315
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    goto/16 :goto_5

    .line 320
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/cauly/android/ad/AdView;->realodAD()V

    goto/16 :goto_5
.end method

.method static synthetic access$0()Lcom/cauly/android/ad/AdLayout;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/cauly/android/ad/AdView;->adLayout:Lcom/cauly/android/ad/AdLayout;

    return-object v0
.end method

.method static synthetic access$1()Lcom/cauly/android/ad/AdCommon;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/cauly/android/ad/AdView;->adCommon:Lcom/cauly/android/ad/AdCommon;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cauly/android/ad/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    sput-object p0, Lcom/cauly/android/ad/AdView;->adLayout:Lcom/cauly/android/ad/AdLayout;

    return-void
.end method

.method static synthetic access$11()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/cauly/android/ad/AdView;->threadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->adtype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cauly/android/ad/AdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    sput-object p0, Lcom/cauly/android/ad/AdView;->adHandler:Lcom/cauly/android/ad/AdHandler;

    return-void
.end method

.method static synthetic access$3()Lcom/cauly/android/ad/AdHandler;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/cauly/android/ad/AdView;->adHandler:Lcom/cauly/android/ad/AdHandler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cauly/android/ad/AdView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->messages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$5(Lcom/cauly/android/ad/AdView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->messages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6()Lcom/cauly/android/ad/AdData;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cauly/android/ad/AdView;->adData:Lcom/cauly/android/ad/AdData;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/cauly/android/ad/AdView;->SAVE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-static {p0, p1, p2}, Lcom/cauly/android/ad/AdView;->loadImage(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    return-object v0
.end method

.method private checkAttrs()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    const/16 v1, 0x1e

    .line 330
    .local v1, minReloadInterval:I
    const/16 v0, 0x78

    .line 331
    .local v0, maxReloadInterval:I
    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->wifi:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->wifi:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    .line 334
    const-string v4, "Cauly Ads"

    const-string v5, "Network DisConnected!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    const-string v5, ""

    if-ne v4, v5, :cond_4

    .line 358
    const-string v3, "Input your appCode in AdView Layout parameter"

    invoke-static {v3}, Lcom/cauly/android/ad/AdCommon;->alertError(Ljava/lang/String;)V

    .line 392
    :goto_1
    return v2

    .line 338
    :cond_1
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    const-string v4, "Cauly Ads"

    const-string v5, "Emulator!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_2
    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->mobile:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_0

    .line 348
    :cond_3
    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    const-string v5, "permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const-string v3, "Need ACCESS_WIFI_STATE permission or Need ACCESS_NETWORK_STATE permission"

    invoke-static {v3}, Lcom/cauly/android/ad/AdCommon;->alertError(Ljava/lang/String;)V

    goto :goto_1

    .line 362
    :cond_4
    iget-object v4, p0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    const-string v5, "CAULY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 363
    const-string v4, "Cauly Ads"

    const-string v5, "default app_code!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_5
    iget v4, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-nez v4, :cond_a

    .line 367
    iput-boolean v2, p0, Lcom/cauly/android/ad/AdView;->isReload:Z

    .line 379
    :goto_2
    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->gender:Ljava/lang/String;

    const-string v4, "male"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 380
    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->gender:Ljava/lang/String;

    const-string v4, "female"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 381
    const-string v2, "all"

    iput-object v2, p0, Lcom/cauly/android/ad/AdView;->gender:Ljava/lang/String;

    .line 383
    :cond_6
    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    const-string v4, "10"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    const-string v4, "20"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 384
    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    const-string v4, "40"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    const-string v4, "50"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 385
    const-string v2, "all"

    iput-object v2, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    .line 387
    :cond_7
    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    const-string v4, "circle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    const-string v4, "half"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    const-string v4, "bottom_slide"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 388
    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    const-string v4, "left_slide"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    const-string v4, "top_slide"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 389
    const-string v2, "default"

    iput-object v2, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    .line 390
    :cond_8
    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->allowcall:Ljava/lang/String;

    const-string v4, "yes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/cauly/android/ad/AdView;->allowcall:Ljava/lang/String;

    const-string v4, "no"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 391
    const-string v2, "yes"

    iput-object v2, p0, Lcom/cauly/android/ad/AdView;->allowcall:Ljava/lang/String;

    :cond_9
    move v2, v3

    .line 392
    goto/16 :goto_1

    .line 368
    :cond_a
    iget v4, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-ge v4, v1, :cond_b

    .line 369
    const-string v3, "Reload Inteval must be lager than 30 sec"

    invoke-static {v3}, Lcom/cauly/android/ad/AdCommon;->alertError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 371
    :cond_b
    iget v4, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-le v4, v0, :cond_c

    .line 372
    const-string v3, "Reload Inteval must be smaller than 120 sec"

    invoke-static {v3}, Lcom/cauly/android/ad/AdCommon;->alertError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 375
    :cond_c
    iget v2, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    .line 376
    iput-boolean v3, p0, Lcom/cauly/android/ad/AdView;->isReload:Z

    goto/16 :goto_2
.end method

.method private static loadImage(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "imageURL"
    .parameter "useCaches"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    const/16 v16, 0x0

    .line 891
    .local v16, image:Landroid/graphics/Bitmap;
    const/16 v22, 0x3

    move/from16 v0, p2

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    .line 893
    if-eqz p0, :cond_0

    .line 895
    const/16 v17, 0x0

    .line 896
    .local v17, is:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 900
    .local v14, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 902
    .end local v14           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .local v15, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    new-instance v13, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v13}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 903
    .local v13, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v19, 0x1388

    .line 904
    .local v19, timeoutConnection:I
    move/from16 v0, v19

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 905
    const/16 v20, 0x1388

    .line 906
    .local v20, timeoutSocket:I
    move/from16 v0, v20

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 907
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 908
    .local v12, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v12, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 910
    .local v18, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 911
    .local v8, entity:Lorg/apache/http/HttpEntity;
    new-instance v4, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v4, v8}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 913
    .local v4, bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 915
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 922
    const-string v22, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 923
    .local v10, file_name:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lcom/cauly/android/ad/AdView;->SAVE_PATH:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    .local v9, file:Ljava/io/File;
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 926
    .local v21, url:Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 928
    .local v5, conn:Ljava/net/URLConnection;
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 929
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 931
    .local v3, bis:Ljava/io/BufferedInputStream;
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v22, 0x400

    move/from16 v0, v22

    invoke-direct {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 932
    .local v2, baf:Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v6, 0x0

    .line 933
    .local v6, current:I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_1

    .line 938
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 939
    .local v11, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 940
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 949
    if-eqz v17, :cond_0

    .line 953
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 963
    .end local v2           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v6           #current:I
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #file_name:Ljava/lang/String;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v12           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v13           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v15           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v17           #is:Ljava/io/InputStream;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #timeoutConnection:I
    .end local v20           #timeoutSocket:I
    .end local v21           #url:Ljava/net/URL;
    :cond_0
    :goto_1
    return-object v16

    .line 935
    .restart local v2       #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #conn:Ljava/net/URLConnection;
    .restart local v6       #current:I
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #file_name:Ljava/lang/String;
    .restart local v12       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v13       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v15       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v17       #is:Ljava/io/InputStream;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #timeoutConnection:I
    .restart local v20       #timeoutSocket:I
    .restart local v21       #url:Ljava/net/URL;
    :cond_1
    int-to-byte v0, v6

    move/from16 v22, v0

    :try_start_3
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 942
    .end local v2           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v6           #current:I
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #file_name:Ljava/lang/String;
    .end local v12           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v13           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #timeoutConnection:I
    .end local v20           #timeoutSocket:I
    .end local v21           #url:Ljava/net/URL;
    :catch_0
    move-exception v7

    move-object v14, v15

    .line 945
    .end local v15           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .local v7, e:Ljava/lang/Throwable;
    .restart local v14       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    :goto_2
    :try_start_4
    const-string v22, "Cauly Ads"

    const-string v23, "Timeout on getting images."

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 949
    if-eqz v17, :cond_0

    .line 953
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 955
    :catch_1
    move-exception v7

    .line 957
    .local v7, e:Ljava/io/IOException;
    const-string v22, "Cauly Ads"

    const-string v23, "Socket Exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 948
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 949
    :goto_3
    if-eqz v17, :cond_2

    .line 953
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 960
    :cond_2
    :goto_4
    throw v22

    .line 955
    :catch_2
    move-exception v7

    .line 957
    .restart local v7       #e:Ljava/io/IOException;
    const-string v23, "Cauly Ads"

    const-string v24, "Socket Exception"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 955
    .end local v7           #e:Ljava/io/IOException;
    .end local v14           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #conn:Ljava/net/URLConnection;
    .restart local v6       #current:I
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #file_name:Ljava/lang/String;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    .restart local v12       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v13       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v15       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #timeoutConnection:I
    .restart local v20       #timeoutSocket:I
    .restart local v21       #url:Ljava/net/URL;
    :catch_3
    move-exception v7

    .line 957
    .restart local v7       #e:Ljava/io/IOException;
    const-string v22, "Cauly Ads"

    const-string v23, "Socket Exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 948
    .end local v2           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v6           #current:I
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #file_name:Ljava/lang/String;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v12           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v13           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #timeoutConnection:I
    .end local v20           #timeoutSocket:I
    .end local v21           #url:Ljava/net/URL;
    :catchall_1
    move-exception v22

    move-object v14, v15

    .end local v15           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 942
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private startReloadTimer()V
    .locals 6

    .prologue
    .line 740
    monitor-enter p0

    .line 742
    :try_start_0
    iget-boolean v0, p0, Lcom/cauly/android/ad/AdView;->isReload:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-lez v0, :cond_2

    .line 743
    sget-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 744
    sget-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 745
    const/4 v0, 0x0

    sput-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    .line 748
    :cond_0
    sget-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 749
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    .line 750
    sget-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    new-instance v1, Lcom/cauly/android/ad/AdView$2;

    invoke-direct {v1, p0}, Lcom/cauly/android/ad/AdView$2;-><init>(Lcom/cauly/android/ad/AdView;)V

    .line 760
    iget v2, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    int-to-long v2, v2

    iget v4, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    int-to-long v4, v4

    .line 750
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 740
    :cond_1
    :goto_0
    monitor-exit p0

    .line 770
    return-void

    .line 762
    :cond_2
    iget-boolean v0, p0, Lcom/cauly/android/ad/AdView;->isReload:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-nez v0, :cond_1

    .line 764
    :cond_3
    sget-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 765
    sget-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 766
    const/4 v0, 0x0

    sput-object v0, Lcom/cauly/android/ad/AdView;->reloadTimer:Ljava/util/Timer;

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAdtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->adtype:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowcall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->allowcall:Ljava/lang/String;

    return-object v0
.end method

.method public getAppcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    return-object v0
.end method

.method public getReloadInterval()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/cauly/android/ad/AdView;->version:Ljava/lang/String;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 869
    if-eqz p1, :cond_0

    .line 870
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/cauly/android/ad/AdView;->lat:D

    .line 871
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/cauly/android/ad/AdView;->lng:D

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lcom/cauly/android/ad/AdView;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/cauly/android/ad/AdView;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    .line 874
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 878
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 882
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 886
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 774
    iget v0, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    if-lez v0, :cond_0

    .line 775
    iput-boolean p1, p0, Lcom/cauly/android/ad/AdView;->isReload:Z

    .line 777
    :cond_0
    invoke-direct {p0}, Lcom/cauly/android/ad/AdView;->startReloadTimer()V

    .line 778
    return-void
.end method

.method public realodAD()V
    .locals 1

    .prologue
    .line 396
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/cauly/android/ad/AdView$1;

    invoke-direct {v0, p0}, Lcom/cauly/android/ad/AdView$1;-><init>(Lcom/cauly/android/ad/AdView;)V

    .line 734
    invoke-virtual {v0}, Lcom/cauly/android/ad/AdView$1;->start()V

    .line 736
    :cond_0
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 824
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->action:Ljava/lang/String;

    .line 825
    return-void
.end method

.method public setAdtype(Ljava/lang/String;)V
    .locals 0
    .parameter "adtype"

    .prologue
    .line 792
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->adtype:Ljava/lang/String;

    .line 793
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 808
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->age:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public setAllowcall(Ljava/lang/String;)V
    .locals 0
    .parameter "allowcall"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->allowcall:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public setAppcode(Ljava/lang/String;)V
    .locals 0
    .parameter "appcode"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->appcode:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 800
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->gender:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public setGps(Ljava/lang/String;)V
    .locals 0
    .parameter "gps"

    .prologue
    .line 816
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->gps:Ljava/lang/String;

    .line 817
    return-void
.end method

.method public setReloadInterval(I)V
    .locals 0
    .parameter "reloadInterval"

    .prologue
    .line 856
    iput p1, p0, Lcom/cauly/android/ad/AdView;->reloadInterval:I

    .line 857
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .parameter "udid"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->udid:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/cauly/android/ad/AdView;->version:Ljava/lang/String;

    .line 841
    return-void
.end method
