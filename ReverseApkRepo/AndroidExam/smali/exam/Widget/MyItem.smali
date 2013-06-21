.class Lexam/Widget/MyItem;
.super Ljava/lang/Object;
.source "ListIconText.java"


# instance fields
.field Icon:I

.field Name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "aIcon"
    .parameter "aName"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lexam/Widget/MyItem;->Icon:I

    .line 36
    iput-object p2, p0, Lexam/Widget/MyItem;->Name:Ljava/lang/String;

    .line 37
    return-void
.end method
