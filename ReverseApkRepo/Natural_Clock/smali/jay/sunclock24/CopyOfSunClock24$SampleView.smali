.class public Ljay/sunclock24/CopyOfSunClock24$SampleView;
.super Landroid/view/View;
.source "CopyOfSunClock24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljay/sunclock24/CopyOfSunClock24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleView"
.end annotation


# instance fields
.field X:Ljava/lang/String;

.field Y:Ljava/lang/String;

.field ang2:Ljava/lang/String;

.field angle:Ljava/lang/String;

.field centX:F

.field centY:F

.field center:Ljava/lang/String;

.field ctimeX:F

.field ctimeX2:D

.field ctimeY:F

.field ctimeY2:D

.field d:Ljava/util/Date;

.field downhr:Ljava/lang/String;

.field downmin:Ljava/lang/String;

.field downn:Ljava/lang/String;

.field dprint:Ljava/lang/String;

.field hours:F

.field hrs:Ljava/lang/String;

.field ind:Ljava/util/Date;

.field lat:D

.field latlon:Ljava/lang/String;

.field latstring:Ljava/lang/String;

.field location:Landroid/location/Location;

.field locationManager:Landroid/location/LocationManager;

.field lon:D

.field lonstring:Ljava/lang/String;

.field mins:F

.field minsdec:F

.field minu:Ljava/lang/String;

.field offset:Ljava/lang/String;

.field offseth:Ljava/lang/String;

.field offsethours:D

.field offsetmill:I

.field path:Landroid/graphics/Path;

.field path1:Landroid/graphics/Path;

.field path2:Landroid/graphics/Path;

.field r:F

.field rec:Landroid/graphics/RectF;

.field recC:Landroid/graphics/RectF;

.field screenMinimize:I

.field set:Ljava/text/DecimalFormat;

.field slang:F

.field smin:Ljava/lang/String;

.field srX:F

.field srY:F

.field srang:F

.field srhr:F

.field srise:Ljava/util/Date;

.field srmin:F

.field srmindec:F

.field srrad:D

.field srs:Ljay/sunclock24/Sunriseset;

.field srstring:Ljava/lang/String;

.field srtimedec:F

.field ssX:F

.field ssY:F

.field ssang:F

.field sset:Ljava/util/Date;

.field sshr:F

.field ssmin:F

.field ssmindec:F

.field ssrad:D

.field ssstring:Ljava/lang/String;

.field sstimedec:F

.field t:Ljay/sunclock24/Timeconvert;

.field thdeg:D

.field final synthetic this$0:Ljay/sunclock24/CopyOfSunClock24;

.field thrad:D

.field time:Ljava/lang/String;

.field timedec:F

.field tz:Ljava/util/TimeZone;

.field tzf:D

.field uphr:Ljava/lang/String;

.field upmin:Ljava/lang/String;

.field upp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljay/sunclock24/CopyOfSunClock24;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    .line 179
    iput-object p1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->this$0:Ljay/sunclock24/CopyOfSunClock24;

    .line 176
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x42f0

    const/high16 v3, 0x4370

    const/high16 v4, 0x438c

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x4270

    const/high16 v2, 0x42c8

    const/high16 v3, 0x4382

    const/high16 v4, 0x4396

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->recC:Landroid/graphics/RectF;

    .line 52
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    .line 53
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    .line 54
    const/high16 v0, 0x42a0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    .line 56
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tz:Ljava/util/TimeZone;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    .line 67
    new-instance v0, Ljay/sunclock24/Timeconvert;

    invoke-direct {v0}, Ljay/sunclock24/Timeconvert;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    .line 68
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljay/sunclock24/CopyOfSunClock24;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->locationManager:Landroid/location/LocationManager;

    .line 72
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->location:Landroid/location/Location;

    .line 74
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsetmill:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    .line 76
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    .line 77
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    .line 78
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tzf:D

    .line 82
    new-instance v0, Ljay/sunclock24/Sunriseset;

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    iget-object v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    iget-wide v6, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    invoke-direct/range {v0 .. v7}, Ljay/sunclock24/Sunriseset;-><init>(DDLjava/util/Date;D)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    .line 84
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    invoke-virtual {v0}, Ljay/sunclock24/Sunriseset;->getSunrise()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srise:Ljava/util/Date;

    .line 85
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    invoke-virtual {v0}, Ljay/sunclock24/Sunriseset;->getSunset()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sset:Ljava/util/Date;

    .line 88
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srise:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srhr:F

    .line 89
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srise:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmin:F

    .line 91
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sset:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sshr:F

    .line 92
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sset:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmin:F

    .line 94
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    .line 97
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srhr:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->uphr:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmin:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->upmin:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sshr:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downhr:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmin:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downmin:Ljava/lang/String;

    .line 103
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmin:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmindec:F

    .line 104
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmin:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmindec:F

    .line 106
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srhr:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmindec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    .line 107
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sshr:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmindec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    .line 109
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srrad:D

    .line 110
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssrad:D

    .line 114
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljay/sunclock24/Timeconvert;->convertdeg(F)F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    .line 115
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljay/sunclock24/Timeconvert;->convertdeg(F)F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssang:F

    .line 120
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssang:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->slang:F

    .line 123
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->mins:F

    .line 124
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hours:F

    .line 125
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->mins:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->minsdec:F

    .line 127
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hours:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->minsdec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    .line 128
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    .line 129
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thdeg:D

    .line 133
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX2:D

    .line 134
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY2:D

    .line 136
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssX:F

    .line 137
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssY:F

    .line 139
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srX:F

    .line 140
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srY:F

    .line 142
    iget-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX2:D

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX:F

    .line 143
    iget-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY2:D

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY:F

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->center:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hours"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hours:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hrs:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mins"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->mins:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->minu:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->time:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "angle"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->angle:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->X:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Y"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->Y:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "up"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->upp:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "down"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downn:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ang"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssang:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ang2:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->latlon:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mill"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsetmill:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hours"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offset:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HERE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->smin:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->dprint:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SS("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downhr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssstring:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SR("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->uphr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->upmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srstring:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->latstring:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Longitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lonstring:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offseth:Ljava/lang/String;

    .line 168
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->path:Landroid/graphics/Path;

    .line 169
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->path1:Landroid/graphics/Path;

    .line 170
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->path2:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Ljay/sunclock24/CopyOfSunClock24;Landroid/content/Context;Ljava/util/Date;)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "in"

    .prologue
    .line 192
    iput-object p1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->this$0:Ljay/sunclock24/CopyOfSunClock24;

    .line 183
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x42f0

    const/high16 v3, 0x4370

    const/high16 v4, 0x438c

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x4270

    const/high16 v2, 0x42c8

    const/high16 v3, 0x4382

    const/high16 v4, 0x4396

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->recC:Landroid/graphics/RectF;

    .line 52
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    .line 53
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    .line 54
    const/high16 v0, 0x42a0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    .line 56
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tz:Ljava/util/TimeZone;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    .line 67
    new-instance v0, Ljay/sunclock24/Timeconvert;

    invoke-direct {v0}, Ljay/sunclock24/Timeconvert;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    .line 68
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljay/sunclock24/CopyOfSunClock24;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->locationManager:Landroid/location/LocationManager;

    .line 72
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->location:Landroid/location/Location;

    .line 74
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsetmill:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    .line 76
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    .line 77
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    .line 78
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->tzf:D

    .line 82
    new-instance v0, Ljay/sunclock24/Sunriseset;

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    iget-object v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    iget-wide v6, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    invoke-direct/range {v0 .. v7}, Ljay/sunclock24/Sunriseset;-><init>(DDLjava/util/Date;D)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    .line 84
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    invoke-virtual {v0}, Ljay/sunclock24/Sunriseset;->getSunrise()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srise:Ljava/util/Date;

    .line 85
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    invoke-virtual {v0}, Ljay/sunclock24/Sunriseset;->getSunset()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sset:Ljava/util/Date;

    .line 88
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srise:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srhr:F

    .line 89
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srise:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmin:F

    .line 91
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sset:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sshr:F

    .line 92
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sset:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmin:F

    .line 94
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    .line 97
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srhr:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->uphr:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmin:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->upmin:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sshr:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downhr:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmin:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downmin:Ljava/lang/String;

    .line 103
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmin:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmindec:F

    .line 104
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmin:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmindec:F

    .line 106
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srhr:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srmindec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    .line 107
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sshr:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssmindec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    .line 109
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srrad:D

    .line 110
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssrad:D

    .line 114
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljay/sunclock24/Timeconvert;->convertdeg(F)F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    .line 115
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljay/sunclock24/Timeconvert;->convertdeg(F)F

    move-result v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssang:F

    .line 120
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssang:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->slang:F

    .line 123
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->mins:F

    .line 124
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hours:F

    .line 125
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->mins:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->minsdec:F

    .line 127
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hours:F

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->minsdec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    .line 128
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    .line 129
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thdeg:D

    .line 133
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX2:D

    .line 134
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY2:D

    .line 136
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssX:F

    .line 137
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssY:F

    .line 139
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srX:F

    .line 140
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srY:F

    .line 142
    iget-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX2:D

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX:F

    .line 143
    iget-wide v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY2:D

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY:F

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->center:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hours"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hours:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hrs:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mins"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->mins:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->minu:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->timedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->time:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "angle"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->thrad:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->angle:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->X:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Y"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->Y:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "up"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srtimedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->upp:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "down"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->sstimedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downn:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ang"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssang:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ang2:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->latlon:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mill"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsetmill:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hours"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offset:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HERE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->smin:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->dprint:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SS("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downhr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssstring:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SR("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->uphr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->upmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srstring:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->latstring:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Longitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lonstring:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offsethours:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offseth:Ljava/lang/String;

    .line 168
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->path:Landroid/graphics/Path;

    .line 169
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->path1:Landroid/graphics/Path;

    .line 170
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->path2:Landroid/graphics/Path;

    .line 185
    iput-object p3, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ind:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 42
    .parameter "canvas"

    .prologue
    .line 202
    new-instance v36, Landroid/graphics/Paint;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v36, blPaint:Landroid/graphics/Paint;
    const/high16 v5, -0x100

    move-object/from16 v0, v36

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 206
    .local v16, yPaint:Landroid/graphics/Paint;
    const/16 v5, -0x100

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    const/16 v5, 0xc8

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 210
    .local v22, wPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    const/4 v5, -0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 215
    .local v28, wtPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    const/4 v5, -0x1

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    const/high16 v5, 0x4040

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    new-instance v38, Landroid/graphics/Paint;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Paint;-><init>()V

    .line 220
    .local v38, fPaint:Landroid/graphics/Paint;
    const/4 v5, -0x1

    move-object/from16 v0, v38

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    new-instance v35, Landroid/graphics/Paint;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Paint;-><init>()V

    .line 224
    .local v35, bPaint:Landroid/graphics/Paint;
    const v5, -0xffff01

    move-object/from16 v0, v35

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    const/16 v5, 0x32

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 228
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    .line 229
    .local v39, facePaint:Landroid/graphics/Paint;
    const v5, -0xbbbbbc

    move-object/from16 v0, v39

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    new-instance v34, Landroid/graphics/Paint;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Paint;-><init>()V

    .line 232
    .local v34, rPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    const/high16 v5, -0x1

    move-object/from16 v0, v34

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    new-instance v40, Landroid/graphics/Paint;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/Paint;-><init>()V

    .line 236
    .local v40, gPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    const v5, -0xbbbbbc

    move-object/from16 v0, v40

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    new-instance v41, Landroid/graphics/Paint;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Paint;-><init>()V

    .line 240
    .local v41, lPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    const v5, -0x333334

    move-object/from16 v0, v41

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 244
    .local v10, ytPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    const/16 v5, -0x100

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    const/high16 v5, 0x4000

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    new-instance v37, Landroid/graphics/Paint;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Paint;-><init>()V

    .line 249
    .local v37, btPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    const v5, -0xbbbbbc

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    const/high16 v5, 0x4000

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    move v5, v0

    if-lez v5, :cond_0

    .line 259
    const/high16 v5, -0x100

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->slang:F

    move v8, v0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->slang:F

    move v6, v0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY:F

    move/from16 v21, v0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move v6, v0

    const/high16 v7, 0x4040

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Year"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ind:Ljava/util/Date;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x435c

    const/high16 v7, 0x43d2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 420
    :goto_0
    const-string v5, "center"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->center:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v5, "hours"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->hrs:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v5, "mins"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->minu:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v5, "time"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->time:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v5, "and"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->angle:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v5, "xd"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->X:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v5, "yd"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->Y:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v5, "up"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->upp:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v5, "down"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->downn:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v5, "angg"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ang2:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v5, "lattlong"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->latlon:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v5, "offset"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offset:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v5, "provide"

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v5, "HERE"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->smin:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v5, "OFF"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->offseth:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 334
    :cond_0
    const/high16 v5, -0x100

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4080

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4080

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40a0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40a0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40c0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40c0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40e0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40e0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4100

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4100

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4110

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4110

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4120

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4120

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4130

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4130

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4150

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4150

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4160

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4160

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4170

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4170

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4180

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4180

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4188

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4188

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4190

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4190

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4198

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4198

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41b0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41b0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41b8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41b8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v21

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v27

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssY:F

    move/from16 v33, v0

    move-object/from16 v29, p1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srY:F

    move/from16 v33, v0

    move-object/from16 v29, p1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    move v7, v0

    const/high16 v8, 0x40e0

    sub-float/2addr v7, v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->r:F

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->slang:F

    move v8, v0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srang:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->slang:F

    move v6, v0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ctimeY:F

    move/from16 v21, v0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->centY:F

    move v6, v0

    const/high16 v7, 0x4040

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 378
    const-string v5, "Sunset Sunrise"

    const/high16 v6, 0x40a0

    const/high16 v7, 0x4220

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    const-string v5, "Touch for Basic"

    const/high16 v6, 0x435c

    const/high16 v7, 0x43d2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    const-string v5, "18"

    const/high16 v6, 0x42ae

    const/high16 v7, 0x434c

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    const-string v5, "6"

    const/high16 v6, 0x435d

    const/high16 v7, 0x434c

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 384
    const-string v5, "24"

    const/high16 v6, 0x4318

    const/high16 v7, 0x430b

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 385
    const-string v5, "12"

    const/high16 v6, 0x431b

    const v7, 0x43878000

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 387
    const-string v5, "9"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4040

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x4140

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v7, v0

    const/high16 v8, 0x4040

    invoke-virtual {v7, v8}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v7

    const/high16 v8, 0x40c0

    sub-float/2addr v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    const-string v5, "15"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4110

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x40c0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v7, v0

    const/high16 v8, 0x4110

    invoke-virtual {v7, v8}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v7

    const/high16 v8, 0x40a0

    sub-float/2addr v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 389
    const-string v5, "21"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4170

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x40c0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v7, v0

    const/high16 v8, 0x4170

    invoke-virtual {v7, v8}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v7

    const/high16 v8, 0x4160

    add-float/2addr v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    const-string v5, "3"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x41a8

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x4160

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v7, v0

    const/high16 v8, 0x41a8

    invoke-virtual {v7, v8}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v7

    const/high16 v8, 0x4188

    add-float/2addr v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssstring:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssX:F

    move v6, v0

    const/high16 v7, 0x425c

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->ssY:F

    move v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srstring:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srX:F

    move v6, v0

    const/high16 v7, 0x40a0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->srY:F

    move v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->dprint:Ljava/lang/String;

    move-object v5, v0

    const/high16 v6, 0x40a0

    const/high16 v7, 0x4170

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->latstring:Ljava/lang/String;

    move-object v5, v0

    const/high16 v6, 0x40a0

    const/high16 v7, 0x43c8

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->lonstring:Ljava/lang/String;

    move-object v5, v0

    const/high16 v6, 0x40a0

    const/high16 v7, 0x43d2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 464
    iget v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    .line 465
    invoke-virtual {p0}, Ljay/sunclock24/CopyOfSunClock24$SampleView;->invalidate()V

    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public updateScreenMinimize(I)V
    .locals 0
    .parameter "screenminimize"

    .prologue
    .line 63
    iput p1, p0, Ljay/sunclock24/CopyOfSunClock24$SampleView;->screenMinimize:I

    .line 64
    return-void
.end method
