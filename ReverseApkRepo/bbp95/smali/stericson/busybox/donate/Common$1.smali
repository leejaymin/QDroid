.class Lstericson/busybox/donate/Common$1;
.super Lcom/stericson/RootTools/Command;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/Common;->getSingleBusyBoxPath()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$paths:Ljava/util/List;


# direct methods
.method varargs constructor <init>(I[Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    iput-object p3, p0, Lstericson/busybox/donate/Common$1;->val$paths:Ljava/util/List;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandFinished(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 85
    return-void
.end method

.method public output(ILjava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 90
    iget-object v0, p0, Lstericson/busybox/donate/Common$1;->val$paths:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
