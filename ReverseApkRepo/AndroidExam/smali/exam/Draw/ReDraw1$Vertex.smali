.class public Lexam/Draw/ReDraw1$Vertex;
.super Ljava/lang/Object;
.source "ReDraw1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/Draw/ReDraw1;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/Draw/ReDraw1;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 82
    iput-object p1, p0, Lexam/Draw/ReDraw1$Vertex;->this$0:Lexam/Draw/ReDraw1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Lexam/Draw/ReDraw1$Vertex;->x:F

    .line 84
    iput p3, p0, Lexam/Draw/ReDraw1$Vertex;->y:F

    .line 85
    iput-boolean p4, p0, Lexam/Draw/ReDraw1$Vertex;->Draw:Z

    .line 86
    return-void
.end method
