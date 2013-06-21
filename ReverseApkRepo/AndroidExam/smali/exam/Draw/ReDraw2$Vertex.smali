.class public Lexam/Draw/ReDraw2$Vertex;
.super Ljava/lang/Object;
.source "ReDraw2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lexam/Draw/ReDraw2;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lexam/Draw/ReDraw2;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 96
    iput-object p1, p0, Lexam/Draw/ReDraw2$Vertex;->this$0:Lexam/Draw/ReDraw2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p2, p0, Lexam/Draw/ReDraw2$Vertex;->x:F

    .line 98
    iput p3, p0, Lexam/Draw/ReDraw2$Vertex;->y:F

    .line 99
    iput-boolean p4, p0, Lexam/Draw/ReDraw2$Vertex;->Draw:Z

    .line 100
    return-void
.end method
