.class public Lcom/google/devtools/simple/runtime/components/android/LocationSensor;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/OnStopListener;
.implements Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SENSORS:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p><p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through either wireless networks or GPS satellites (if outside).</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_MOCK_LOCATION,android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/simple/runtime/components/android/LocationSensor$1;,
        Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;
    }
.end annotation


# static fields
.field public static final MIN_DISTANCE_INTERVAL:J = 0x5L

.field public static final MIN_TIME_INTERVAL:J = 0xea60L

.field public static final UNKNOWN_VALUE:I


# instance fields
.field private allProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private altitude:D

.field private final context:Landroid/content/Context;

.field private enabled:Z

.field private geocoder:Landroid/location/Geocoder;

.field private final handler:Landroid/os/Handler;

.field private hasAltitude:Z

.field private hasLocationData:Z

.field private lastLocation:Landroid/location/Location;

.field private latitude:D

.field private listening:Z

.field private final locationCriteria:Landroid/location/Criteria;

.field private final locationManager:Landroid/location/LocationManager;

.field private locationProvider:Landroid/location/LocationProvider;

.field private longitude:D

.field private myLocationListener:Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;

.field private notifier:Lcom/google/devtools/simple/runtime/components/android/Notifier;

.field private providerLocked:Z

.field private providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 4
    .parameter "container"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerLocked:Z

    .line 164
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->listening:Z

    .line 174
    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D

    .line 175
    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D

    .line 176
    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->altitude:D

    .line 177
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasLocationData:Z

    .line 178
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasAltitude:Z

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    .line 194
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->context:Landroid/content/Context;

    .line 195
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->handler:Landroid/os/Handler;

    .line 196
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Notifier;

    invoke-direct {v1, p1}, Lcom/google/devtools/simple/runtime/components/android/Notifier;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->notifier:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    .line 198
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    .line 199
    .local v0, form:Lcom/google/devtools/simple/runtime/components/android/Form;
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnResume(Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;)V

    .line 200
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnStop(Lcom/google/devtools/simple/runtime/components/android/OnStopListener;)V

    .line 203
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->geocoder:Landroid/location/Geocoder;

    .line 204
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationManager:Landroid/location/LocationManager;

    .line 205
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    .line 206
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;-><init>(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Lcom/google/devtools/simple/runtime/components/android/LocationSensor$1;)V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->myLocationListener:Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;

    .line 207
    return-void
.end method

.method static synthetic access$002(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->lastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasAltitude:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->altitude:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->altitude:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasLocationData:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method private empty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 547
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->notifier:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->ShowAlert(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private startProvider(Ljava/lang/String;)Z
    .locals 8
    .parameter "providerName"

    .prologue
    const/4 v7, 0x1

    .line 493
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 495
    .local v6, tLocationProvider:Landroid/location/LocationProvider;
    if-nez v6, :cond_0

    .line 496
    const-string v0, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvider("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v0, 0x0

    .line 504
    :goto_0
    return v0

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V

    .line 500
    iput-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 501
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationManager:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x40a0

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->myLocationListener:Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 503
    iput-boolean v7, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->listening:Z

    move v0, v7

    .line 504
    goto :goto_0
.end method

.method private stopListening()V
    .locals 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->listening:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->myLocationListener:Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->listening:Z

    .line 520
    :cond_0
    return-void
.end method


# virtual methods
.method public Accuracy()D
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    .line 351
    :goto_0
    return-wide v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 351
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Altitude()D
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->altitude:D

    return-wide v0
.end method

.method public AvailableProviders()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method public CurrentAddress()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 386
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D

    const-wide v2, 0x4056800000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D

    const-wide v2, -0x3fa9800000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D

    const-wide v2, 0x4066800000000000L

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D

    const-wide v2, -0x3f99800000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 390
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->geocoder:Landroid/location/Geocoder;

    iget-wide v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D

    iget-wide v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 391
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_3

    .line 392
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 393
    .local v6, address:Landroid/location/Address;
    if-eqz v6, :cond_3

    .line 394
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v10, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v0

    if-gt v9, v0, :cond_2

    .line 396
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 407
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #i:I
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v0

    .line 402
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 403
    .local v8, e:Ljava/io/IOException;
    const-string v0, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown by getFromLocation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v8           #e:Ljava/io/IOException;
    :cond_3
    const-string v0, "No address available"

    goto :goto_1
.end method

.method public Enabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    .line 373
    if-nez p1, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->RefreshProvider()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    return v0
.end method

.method public HasAccuracy()Z
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->Accuracy()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasAltitude()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasAltitude:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasLongitudeLatitude()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D

    return-wide v0
.end method

.method public LatitudeFromAddress(Ljava/lang/String;)D
    .locals 4
    .parameter "locationName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 421
    .local v0, addressObjs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-nez v0, :cond_0

    .line 422
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v0           #addressObjs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 426
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can\'t find latitude from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Sorry!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->showAlert(Ljava/lang/String;)V

    .line 427
    const-wide/16 v2, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_0
    return-wide v2

    .line 424
    .restart local v0       #addressObjs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0
.end method

.method public LocationChanged(DDD)V
    .locals 4
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "latitude As Double, longitude As Double, altitude As Double"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "LocationChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_0
    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D

    return-wide v0
.end method

.method public LongitudeFromAddress(Ljava/lang/String;)D
    .locals 4
    .parameter "locationName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    .prologue
    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 441
    .local v0, addressObjs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-nez v0, :cond_0

    .line 442
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0           #addressObjs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 446
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can\'t find longitude from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Sorry!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->showAlert(Ljava/lang/String;)V

    .line 447
    const-wide/16 v2, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_0
    return-wide v2

    .line 444
    .restart local v0       #addressObjs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0
.end method

.method public ProviderLocked(Z)V
    .locals 0
    .parameter "lock"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerLocked:Z

    .line 286
    return-void
.end method

.method public ProviderLocked()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerLocked:Z

    return v0
.end method

.method public ProviderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "NO PROVIDER"

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public ProviderName(Ljava/lang/String;)V
    .locals 1
    .parameter "providerName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    .line 265
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->RefreshProvider()V

    goto :goto_0
.end method

.method public RefreshProvider()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 467
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V

    .line 468
    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerLocked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 469
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->listening:Z

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->allProviders:Ljava/util/List;

    .line 473
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    invoke-virtual {v3, v4, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, bProviderName:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 475
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 478
    :cond_2
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 479
    .local v2, providerN:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->listening:Z

    .line 480
    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->listening:Z

    if-eqz v3, :cond_3

    .line 481
    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerLocked:Z

    if-nez v3, :cond_0

    .line 482
    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public StatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "latitude As Double, longitude As Double, altitude As Double"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "StatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V

    .line 544
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->RefreshProvider()V

    .line 530
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V

    .line 537
    return-void
.end method
