.class public Lexam/activity/SaveCurve3$Vertex;
.super Ljava/lang/Object;
.source "SaveCurve3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/activity/SaveCurve3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/activity/SaveCurve3;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/activity/SaveCurve3;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 31
    iput-object p1, p0, Lexam/activity/SaveCurve3$Vertex;->this$0:Lexam/activity/SaveCurve3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p2, p0, Lexam/activity/SaveCurve3$Vertex;->x:F

    .line 33
    iput p3, p0, Lexam/activity/SaveCurve3$Vertex;->y:F

    .line 34
    iput-boolean p4, p0, Lexam/activity/SaveCurve3$Vertex;->Draw:Z

    .line 35
    return-void
.end method
