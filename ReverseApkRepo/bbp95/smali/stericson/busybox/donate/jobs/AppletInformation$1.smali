.class Lstericson/busybox/donate/jobs/AppletInformation$1;
.super Lcom/stericson/RootTools/Command;
.source "AppletInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/jobs/AppletInformation;->findApplet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/jobs/AppletInformation;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method varargs constructor <init>(Lstericson/busybox/donate/jobs/AppletInformation;I[Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/jobs/AppletInformation$1;->this$0:Lstericson/busybox/donate/jobs/AppletInformation;

    iput-object p4, p0, Lstericson/busybox/donate/jobs/AppletInformation$1;->val$result:Ljava/util/List;

    .line 199
    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandFinished(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 203
    return-void
.end method

.method public output(ILjava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 208
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AppletInformation$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method
