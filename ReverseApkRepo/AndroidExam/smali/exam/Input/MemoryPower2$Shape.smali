.class Lexam/Input/MemoryPower2$Shape;
.super Ljava/lang/Object;
.source "MemoryPower2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/MemoryPower2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shape"
.end annotation


# static fields
.field static final CIRCLE:I = 0x1

.field static final RECT:I = 0x0

.field static final TRIANGLE:I = 0x2


# instance fields
.field color:I

.field rt:Landroid/graphics/Rect;

.field final synthetic this$0:Lexam/Input/MemoryPower2;

.field what:I


# direct methods
.method constructor <init>(Lexam/Input/MemoryPower2;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lexam/Input/MemoryPower2$Shape;->this$0:Lexam/Input/MemoryPower2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
