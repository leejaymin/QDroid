.class public Lexam/Input/FreeLine$Vertex;
.super Ljava/lang/Object;
.source "FreeLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/FreeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/Input/FreeLine;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/Input/FreeLine;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 25
    iput-object p1, p0, Lexam/Input/FreeLine$Vertex;->this$0:Lexam/Input/FreeLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p2, p0, Lexam/Input/FreeLine$Vertex;->x:F

    .line 27
    iput p3, p0, Lexam/Input/FreeLine$Vertex;->y:F

    .line 28
    iput-boolean p4, p0, Lexam/Input/FreeLine$Vertex;->Draw:Z

    .line 29
    return-void
.end method
