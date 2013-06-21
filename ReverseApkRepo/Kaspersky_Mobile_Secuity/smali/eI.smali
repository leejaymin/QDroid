.class public LeI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, LeI;->b:I

    .line 17
    iput p2, p0, LeI;->c:I

    .line 18
    iput p3, p0, LeI;->d:I

    .line 19
    iput-object p4, p0, LeI;->e:Ljava/lang/String;

    .line 20
    iput-object p5, p0, LeI;->f:Ljava/lang/String;

    .line 21
    return-void
.end method
