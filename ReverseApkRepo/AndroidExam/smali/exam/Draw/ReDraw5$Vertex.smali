.class public Lexam/Draw/ReDraw5$Vertex;
.super Ljava/lang/Object;
.source "ReDraw5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/Draw/ReDraw5;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/Draw/ReDraw5;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 114
    iput-object p1, p0, Lexam/Draw/ReDraw5$Vertex;->this$0:Lexam/Draw/ReDraw5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Lexam/Draw/ReDraw5$Vertex;->x:F

    .line 116
    iput p3, p0, Lexam/Draw/ReDraw5$Vertex;->y:F

    .line 117
    iput-boolean p4, p0, Lexam/Draw/ReDraw5$Vertex;->Draw:Z

    .line 118
    return-void
.end method
