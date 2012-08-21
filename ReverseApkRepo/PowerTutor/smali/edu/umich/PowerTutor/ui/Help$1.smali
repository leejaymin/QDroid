.class Ledu/umich/PowerTutor/ui/Help$1;
.super Ljava/lang/Object;
.source "Help.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/Help;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/Help;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/Help;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/Help$1;->this$0:Ledu/umich/PowerTutor/ui/Help;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 44
    const-string v2, "http://powertutor.org"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 43
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/Help$1;->this$0:Ledu/umich/PowerTutor/ui/Help;

    invoke-virtual {v1, v0}, Ledu/umich/PowerTutor/ui/Help;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
