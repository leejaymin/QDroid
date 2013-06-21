.class Lcom/urbanairship/push/AirMail$AirMailInstaller$1;
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

    iput-object p1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$1;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$1;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    invoke-virtual {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->promptForDownload()V

    return-void
.end method
