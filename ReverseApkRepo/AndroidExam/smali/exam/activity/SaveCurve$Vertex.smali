.class public Lexam/activity/SaveCurve$Vertex;
.super Ljava/lang/Object;
.source "SaveCurve.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/activity/SaveCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64L


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/activity/SaveCurve;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/activity/SaveCurve;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 35
    iput-object p1, p0, Lexam/activity/SaveCurve$Vertex;->this$0:Lexam/activity/SaveCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p2, p0, Lexam/activity/SaveCurve$Vertex;->x:F

    .line 37
    iput p3, p0, Lexam/activity/SaveCurve$Vertex;->y:F

    .line 38
    iput-boolean p4, p0, Lexam/activity/SaveCurve$Vertex;->Draw:Z

    .line 39
    return-void
.end method
