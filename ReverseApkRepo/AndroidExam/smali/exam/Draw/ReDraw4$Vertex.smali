.class public Lexam/Draw/ReDraw4$Vertex;
.super Ljava/lang/Object;
.source "ReDraw4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/Draw/ReDraw4;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/Draw/ReDraw4;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 125
    iput-object p1, p0, Lexam/Draw/ReDraw4$Vertex;->this$0:Lexam/Draw/ReDraw4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p2, p0, Lexam/Draw/ReDraw4$Vertex;->x:F

    .line 127
    iput p3, p0, Lexam/Draw/ReDraw4$Vertex;->y:F

    .line 128
    iput-boolean p4, p0, Lexam/Draw/ReDraw4$Vertex;->Draw:Z

    .line 129
    return-void
.end method
