.class public Lexam/Draw/ReDraw3$Vertex;
.super Ljava/lang/Object;
.source "ReDraw3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/Draw/ReDraw3;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/Draw/ReDraw3;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 112
    iput-object p1, p0, Lexam/Draw/ReDraw3$Vertex;->this$0:Lexam/Draw/ReDraw3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p2, p0, Lexam/Draw/ReDraw3$Vertex;->x:F

    .line 114
    iput p3, p0, Lexam/Draw/ReDraw3$Vertex;->y:F

    .line 115
    iput-boolean p4, p0, Lexam/Draw/ReDraw3$Vertex;->Draw:Z

    .line 116
    return-void
.end method
