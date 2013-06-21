.class Lcom/urbanairship/push/AirMail$AirMailInstaller$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/AirMail$AirMailInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$2;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://com.urbanairship.filereleases.s3.amazonaws.com/amcp-latest.apk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$2;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #getter for: Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;
    invoke-static {v1}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$200(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
