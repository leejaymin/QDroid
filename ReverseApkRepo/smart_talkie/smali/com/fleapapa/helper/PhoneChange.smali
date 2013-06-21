.class public Lcom/fleapapa/helper/PhoneChange;
.super Lcom/google/android/maps/MapActivity;
.source "PhoneChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/PhoneChange$Overlay4Click;
    }
.end annotation


# instance fields
.field draw_me:Landroid/graphics/drawable/Drawable;

.field lat:D

.field lon:D

.field mview:Lcom/google/android/maps/MapView;

.field mypoint:Lcom/google/android/maps/GeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    return-void
.end method

.method public static loc2addr(Landroid/app/Activity;DD)Ljava/lang/String;
    .locals 10
    .parameter "a"
    .parameter "lat"
    .parameter "lon"

    .prologue
    const-string v1, ","

    .line 144
    new-instance v0, Landroid/location/Geocoder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 146
    .local v0, go:Landroid/location/Geocoder;
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 147
    .local v7, alist:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 148
    .local v6, addr:Landroid/location/Address;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, fulladdr:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v1, v9

    .line 154
    .end local v6           #addr:Landroid/location/Address;
    .end local v7           #alist:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #fulladdr:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 153
    .local v8, e:Ljava/lang/Exception;
    const v1, 0x7f0600ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method move(Z)V
    .locals 7
    .parameter "centerMap"

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 127
    const v1, 0x7f080119

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/fleapapa/helper/PhoneChange;->lat:D

    .line 128
    const v1, 0x7f08011a

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/fleapapa/helper/PhoneChange;->lon:D

    .line 129
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-wide v2, p0, Lcom/fleapapa/helper/PhoneChange;->lat:D

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/fleapapa/helper/PhoneChange;->lon:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lcom/fleapapa/helper/PhoneChange;->mypoint:Lcom/google/android/maps/GeoPoint;

    .line 130
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/PhoneChange;->mypoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 133
    :cond_0
    iget-wide v1, p0, Lcom/fleapapa/helper/PhoneChange;->lat:D

    iget-wide v3, p0, Lcom/fleapapa/helper/PhoneChange;->lon:D

    invoke-static {p0, v1, v2, v3, v4}, Lcom/fleapapa/helper/PhoneChange;->loc2addr(Landroid/app/Activity;DD)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 135
    const v1, 0x7f080117

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v7, "gps"

    .line 41
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->setContentView(I)V

    .line 45
    const v2, 0x7f080112

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 46
    .local v0, frame:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/fleapapa/helper/PhoneChange;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "op"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, op:Ljava/lang/String;
    const v2, 0x7f080113

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    const v2, 0x7f080116

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "gps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    const-string v2, "gps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0600c5

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    const v2, 0x7f08011f

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/MapView;

    iput-object v2, p0, Lcom/fleapapa/helper/PhoneChange;->mview:Lcom/google/android/maps/MapView;

    .line 53
    iget-object v2, p0, Lcom/fleapapa/helper/PhoneChange;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 54
    iget-object v2, p0, Lcom/fleapapa/helper/PhoneChange;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v2, v6}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 57
    iget-object v2, p0, Lcom/fleapapa/helper/PhoneChange;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/PhoneChange$Overlay4Click;-><init>(Lcom/fleapapa/helper/PhoneChange;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Lcom/fleapapa/helper/PhoneChange;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/fleapapa/helper/PhoneChange;->draw_me:Landroid/graphics/drawable/Drawable;

    .line 61
    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/fleapapa/helper/PhoneChange$1;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/PhoneChange$1;-><init>(Lcom/fleapapa/helper/PhoneChange;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v2, 0x7f080118

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/fleapapa/helper/PhoneChange$2;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/PhoneChange$2;-><init>(Lcom/fleapapa/helper/PhoneChange;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v2, 0x7f08011b

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/fleapapa/helper/PhoneChange$3;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/PhoneChange$3;-><init>(Lcom/fleapapa/helper/PhoneChange;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f08011e

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/fleapapa/helper/PhoneChange$4;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/PhoneChange$4;-><init>(Lcom/fleapapa/helper/PhoneChange;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v2, 0x7f08011d

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/fleapapa/helper/PhoneChange$5;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/PhoneChange$5;-><init>(Lcom/fleapapa/helper/PhoneChange;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v2, 0x7f08011c

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/fleapapa/helper/PhoneChange$6;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/PhoneChange$6;-><init>(Lcom/fleapapa/helper/PhoneChange;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget-object v2, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v2}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sget-object v4, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v4}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/fleapapa/helper/PhoneChange;->setloc(DD)V

    .line 121
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/PhoneChange;->move(Z)V

    .line 122
    return-void

    :cond_0
    move v3, v5

    .line 47
    goto/16 :goto_0

    :cond_1
    move v3, v5

    .line 48
    goto/16 :goto_1

    .line 49
    :cond_2
    const-string v2, "Change Phone#"

    goto/16 :goto_2
.end method

.method setloc(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lon"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "%f"

    .line 140
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "%f"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 141
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    const-string v0, "%f"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 142
    return-void
.end method
