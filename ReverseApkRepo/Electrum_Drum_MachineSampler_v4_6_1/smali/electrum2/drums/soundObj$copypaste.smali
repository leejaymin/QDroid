.class public Lelectrum2/drums/soundObj$copypaste;
.super Ljava/lang/Object;
.source "soundObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/soundObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "copypaste"
.end annotation


# static fields
.field public static StereoPanLbackup:F

.field public static StereoPanRbackup:F

.field public static backupfilename:Ljava/lang/String;

.field public static dofitbpmbackup:Z

.field public static fxdelayfeedbackbackup:F

.field public static fxdelaytimebackup:I

.field public static fxdelaywrapbackup:Z

.field public static fxdistortiongainbackup:F

.field public static fxdistortionthresholdbackup:F

.field public static hasDelayBackup:Z

.field public static hasDistortionBackup:Z

.field public static hasReverseBackup:Z

.field public static pitchbackup:I

.field public static retriggerbackup:Z

.field public static samplebpmbackup:F

.field public static sampleendposbackup:I

.field public static samplefulllenbackup:I

.field public static samplevolumebackup:D

.field public static startposbackup:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
