.class public Ljay/sunclock24/SunClock24$SampleView;
.super Landroid/view/View;
.source "SunClock24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljay/sunclock24/SunClock24;
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

.field final synthetic this$0:Ljay/sunclock24/SunClock24;

.field thrad:D

.field time:Ljava/lang/String;

.field timedec:F

.field tz:Ljava/util/TimeZone;

.field tzf:D

.field uphr:Ljava/lang/String;

.field upmin:Ljava/lang/String;

.field upp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljay/sunclock24/SunClock24;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    .line 232
    iput-object p1, p0, Ljay/sunclock24/SunClock24$SampleView;->this$0:Ljay/sunclock24/SunClock24;

    .line 227
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x42f0

    const/high16 v3, 0x4370

    const/high16 v4, 0x438c

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->rec:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x4270

    const/high16 v2, 0x42c8

    const/high16 v3, 0x4382

    const/high16 v4, 0x4396

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->recC:Landroid/graphics/RectF;

    .line 103
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->rec:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    .line 104
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->rec:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    .line 105
    const/high16 v0, 0x42a0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    .line 106
    sget-object v0, Ljay/sunclock24/SunClock24;->in:Ljava/util/Date;

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->d:Ljava/util/Date;

    .line 107
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->tz:Ljava/util/TimeZone;

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->screenMinimize:I

    .line 118
    new-instance v0, Ljay/sunclock24/Timeconvert;

    invoke-direct {v0}, Ljay/sunclock24/Timeconvert;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    .line 119
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljay/sunclock24/SunClock24;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Ljay/sunclock24/SunClock24$SampleView;->locationManager:Landroid/location/LocationManager;

    .line 123
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->location:Landroid/location/Location;

    .line 125
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->offsetmill:I

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->offsethours:D

    .line 127
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->lat:D

    .line 128
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->lon:D

    .line 129
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->tz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->tzf:D

    .line 133
    new-instance v0, Ljay/sunclock24/Sunriseset;

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->lat:D

    iget-wide v3, p0, Ljay/sunclock24/SunClock24$SampleView;->lon:D

    iget-object v5, p0, Ljay/sunclock24/SunClock24$SampleView;->d:Ljava/util/Date;

    iget-wide v6, p0, Ljay/sunclock24/SunClock24$SampleView;->offsethours:D

    invoke-direct/range {v0 .. v7}, Ljay/sunclock24/Sunriseset;-><init>(DDLjava/util/Date;D)V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    .line 135
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    invoke-virtual {v0}, Ljay/sunclock24/Sunriseset;->getSunrise()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srise:Ljava/util/Date;

    .line 136
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srs:Ljay/sunclock24/Sunriseset;

    invoke-virtual {v0}, Ljay/sunclock24/Sunriseset;->getSunset()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->sset:Ljava/util/Date;

    .line 139
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srise:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srhr:F

    .line 140
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srise:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srmin:F

    .line 142
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->sset:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->sshr:F

    .line 143
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->sset:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssmin:F

    .line 145
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    .line 148
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->srhr:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->uphr:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->srmin:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->upmin:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->sshr:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->downhr:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->set:Ljava/text/DecimalFormat;

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->ssmin:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->downmin:Ljava/lang/String;

    .line 154
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srmin:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srmindec:F

    .line 155
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssmin:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssmindec:F

    .line 157
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srhr:F

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->srmindec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srtimedec:F

    .line 158
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->sshr:F

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->ssmindec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->sstimedec:F

    .line 160
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srtimedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srrad:D

    .line 161
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->sstimedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssrad:D

    .line 165
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->srtimedec:F

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljay/sunclock24/Timeconvert;->convertdeg(F)F

    move-result v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srang:F

    .line 166
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->sstimedec:F

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljay/sunclock24/Timeconvert;->convertdeg(F)F

    move-result v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssang:F

    .line 171
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssang:F

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->srang:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->slang:F

    .line 174
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->mins:F

    .line 175
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->hours:F

    .line 176
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->mins:F

    const/high16 v1, 0x4270

    div-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->minsdec:F

    .line 178
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->hours:F

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->minsdec:F

    add-float/2addr v0, v1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->timedec:F

    .line 179
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->timedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->thrad:D

    .line 180
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->timedec:F

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->thdeg:D

    .line 184
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/SunClock24$SampleView;->thrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeX2:D

    .line 185
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/SunClock24$SampleView;->thrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeY2:D

    .line 187
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/SunClock24$SampleView;->ssrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssX:F

    .line 188
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/SunClock24$SampleView;->ssrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssY:F

    .line 190
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    float-to-double v0, v0

    iget-object v2, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v3, p0, Ljay/sunclock24/SunClock24$SampleView;->srrad:D

    invoke-virtual {v2, v3, v4}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srX:F

    .line 191
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    float-to-double v0, v0

    iget v2, p0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    float-to-double v2, v2

    iget-object v4, p0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    iget-wide v5, p0, Ljay/sunclock24/SunClock24$SampleView;->srrad:D

    invoke-virtual {v4, v5, v6}, Ljay/sunclock24/Timeconvert;->convertrad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, -0x4010

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srY:F

    .line 193
    iget-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeX2:D

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeX:F

    .line 194
    iget-wide v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeY2:D

    double-to-float v0, v0

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeY:F

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->center:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hours"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->hours:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->hrs:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mins"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->mins:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->minu:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->timedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->time:Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "angle"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->thrad:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->angle:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->X:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Y"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->ctimeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->Y:Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "up"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->srtimedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->upp:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "down"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->sstimedec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->downn:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ang"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->srang:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->ssang:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ang2:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->latlon:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mill"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->offsetmill:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hours"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->offsethours:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->offset:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HERE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljay/sunclock24/SunClock24$SampleView;->screenMinimize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->smin:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->dprint:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SS("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljay/sunclock24/SunClock24$SampleView;->downhr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljay/sunclock24/SunClock24$SampleView;->downmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->ssstring:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SR("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljay/sunclock24/SunClock24$SampleView;->uphr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljay/sunclock24/SunClock24$SampleView;->upmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->srstring:Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->latstring:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Longitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->lonstring:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljay/sunclock24/SunClock24$SampleView;->offsethours:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->offseth:Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->path:Landroid/graphics/Path;

    .line 220
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->path1:Landroid/graphics/Path;

    .line 221
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljay/sunclock24/SunClock24$SampleView;->path2:Landroid/graphics/Path;

    .line 231
    const-string v0, "VIEW CREATED"

    sget-object v1, Ljay/sunclock24/SunClock24;->in:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 42
    .parameter "canvas"

    .prologue
    .line 244
    new-instance v36, Landroid/graphics/Paint;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Paint;-><init>()V

    .line 245
    .local v36, blPaint:Landroid/graphics/Paint;
    const/high16 v5, -0x100

    move-object/from16 v0, v36

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    new-instance v34, Landroid/graphics/Paint;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Paint;-><init>()V

    .line 248
    .local v34, yPaint:Landroid/graphics/Paint;
    const/16 v5, -0x100

    move-object/from16 v0, v34

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    const/16 v5, 0xc8

    move-object/from16 v0, v34

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 251
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 252
    .local v10, wPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    const/4 v5, -0x1

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 257
    .local v16, wtPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    const/4 v5, -0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    const/high16 v5, 0x4040

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 261
    new-instance v38, Landroid/graphics/Paint;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Paint;-><init>()V

    .line 262
    .local v38, fPaint:Landroid/graphics/Paint;
    const/4 v5, -0x1

    move-object/from16 v0, v38

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    new-instance v35, Landroid/graphics/Paint;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Paint;-><init>()V

    .line 266
    .local v35, bPaint:Landroid/graphics/Paint;
    const v5, -0xffff01

    move-object/from16 v0, v35

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    const/16 v5, 0x32

    move-object/from16 v0, v34

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 270
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    .line 271
    .local v39, facePaint:Landroid/graphics/Paint;
    const v5, -0xbbbbbc

    move-object/from16 v0, v39

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 274
    .local v22, rPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    const/high16 v5, -0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    new-instance v40, Landroid/graphics/Paint;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/Paint;-><init>()V

    .line 278
    .local v40, gPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 279
    const v5, -0xbbbbbc

    move-object/from16 v0, v40

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    new-instance v41, Landroid/graphics/Paint;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Paint;-><init>()V

    .line 282
    .local v41, lPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    const v5, -0x333334

    move-object/from16 v0, v41

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 286
    .local v28, ytPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    const/16 v5, -0x100

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    const/high16 v5, 0x4000

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 290
    new-instance v37, Landroid/graphics/Paint;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Paint;-><init>()V

    .line 291
    .local v37, btPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    const v5, -0xbbbbbc

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    const/high16 v5, 0x4000

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->screenMinimize:I

    move v5, v0

    if-lez v5, :cond_0

    .line 301
    const/high16 v5, -0x100

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x3f80

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x3f80

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4000

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4000

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4080

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4080

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x40a0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x40a0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40c0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40c0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x40e0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x40e0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4100

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4100

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4110

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4110

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4120

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4120

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4130

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4130

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4150

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4150

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4160

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4160

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4170

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4170

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4180

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4180

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4188

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4188

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4190

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4190

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4198

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4198

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x41a0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x41a0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x41b0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x41b0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x41b8

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x41b8

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ssX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ssY:F

    move/from16 v21, v0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srY:F

    move/from16 v21, v0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    move v7, v0

    const/high16 v8, 0x40e0

    sub-float/2addr v7, v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->dprint:Ljava/lang/String;

    move-object v5, v0

    const/high16 v6, 0x40a0

    const/high16 v7, 0x4170

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srang:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->slang:F

    move v6, v0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srang:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->slang:F

    move v6, v0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v32

    const/16 v33, 0x1

    move-object/from16 v29, p1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ctimeX:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ctimeY:F

    move v9, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v6, v0

    const/high16 v7, 0x4040

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 352
    const-string v5, "18"

    const/high16 v6, 0x42ae

    const/high16 v7, 0x434c

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 353
    const-string v5, "6"

    const/high16 v6, 0x435d

    const/high16 v7, 0x434c

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 354
    const-string v5, "24"

    const/high16 v6, 0x4318

    const/high16 v7, 0x430b

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 355
    const-string v5, "12"

    const/high16 v6, 0x431b

    const v7, 0x43878000

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 357
    const-string v5, "9"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4040

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x4140

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 358
    const-string v5, "15"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4110

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x40c0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 359
    const-string v5, "21"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4170

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x40c0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    const-string v5, "3"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x41a8

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x4160

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    :goto_0
    const-string v5, "center"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->center:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v5, "hours"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->hrs:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v5, "mins"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->minu:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v5, "time"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->time:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v5, "and"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->angle:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v5, "xd"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->X:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v5, "yd"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->Y:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v5, "up"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->upp:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v5, "down"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->downn:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v5, "angg"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ang2:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v5, "lattlong"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->latlon:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v5, "offset"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->offset:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v5, "provide"

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v5, "HERE"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->smin:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v5, "OFF"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->offseth:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 376
    :cond_0
    const/high16 v5, -0x100

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x3f80

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x3f80

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4000

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4000

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4080

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4080

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x40a0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x40a0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40c0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x40c0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x40e0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x40e0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4100

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4100

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4110

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4110

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4120

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4120

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4130

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4130

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4150

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4150

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4160

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4160

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4170

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4170

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4180

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4180

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4188

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4188

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4190

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x4190

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x4198

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x4198

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x41a0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x41a0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v6, 0x41a8

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x41b0

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x41b0

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v8, 0x41b8

    invoke-virtual {v5, v8}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/high16 v9, 0x41b8

    invoke-virtual {v5, v9}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->getY(F)F

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ssX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ssY:F

    move/from16 v21, v0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srY:F

    move/from16 v21, v0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    move v7, v0

    const/high16 v8, 0x40e0

    sub-float/2addr v7, v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->r:F

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srang:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->slang:F

    move v6, v0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v23, p1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->rec:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srang:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->slang:F

    move v6, v0

    invoke-virtual {v5, v6}, Ljay/sunclock24/Timeconvert;->sl(F)F

    move-result v32

    const/16 v33, 0x1

    move-object/from16 v29, p1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ctimeX:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ctimeY:F

    move v9, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->centY:F

    move v6, v0

    const/high16 v7, 0x4040

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 420
    const-string v5, "Sunset Sunrise"

    const/high16 v6, 0x40a0

    const/high16 v7, 0x4220

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    const-string v5, "Touch for Basic"

    const/high16 v6, 0x435c

    const/high16 v7, 0x43d2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    const-string v5, "18"

    const/high16 v6, 0x42ae

    const/high16 v7, 0x434c

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    const-string v5, "6"

    const/high16 v6, 0x435d

    const/high16 v7, 0x434c

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    const-string v5, "24"

    const/high16 v6, 0x4318

    const/high16 v7, 0x430b

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 427
    const-string v5, "12"

    const/high16 v6, 0x431b

    const v7, 0x43878000

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 429
    const-string v5, "9"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4040

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x4140

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 430
    const-string v5, "15"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4110

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x40c0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 431
    const-string v5, "21"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x4170

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x40c0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    const-string v5, "3"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

    move-object v6, v0

    const/high16 v7, 0x41a8

    invoke-virtual {v6, v7}, Ljay/sunclock24/Timeconvert;->getX(F)F

    move-result v6

    const/high16 v7, 0x4160

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->t:Ljay/sunclock24/Timeconvert;

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

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ssstring:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ssX:F

    move v6, v0

    const/high16 v7, 0x425c

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->ssY:F

    move v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srstring:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srX:F

    move v6, v0

    const/high16 v7, 0x40a0

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/SunClock24$SampleView;->srY:F

    move v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->dprint:Ljava/lang/String;

    move-object v5, v0

    const/high16 v6, 0x40a0

    const/high16 v7, 0x4170

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->latstring:Ljava/lang/String;

    move-object v5, v0

    const/high16 v6, 0x40a0

    const/high16 v7, 0x43c8

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/SunClock24$SampleView;->lonstring:Ljava/lang/String;

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
    .line 506
    iget v0, p0, Ljay/sunclock24/SunClock24$SampleView;->screenMinimize:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljay/sunclock24/SunClock24$SampleView;->screenMinimize:I

    .line 509
    invoke-virtual {p0}, Ljay/sunclock24/SunClock24$SampleView;->invalidate()V

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public updateScreenMinimize(I)V
    .locals 0
    .parameter "screenminimize"

    .prologue
    .line 114
    iput p1, p0, Ljay/sunclock24/SunClock24$SampleView;->screenMinimize:I

    .line 115
    return-void
.end method
