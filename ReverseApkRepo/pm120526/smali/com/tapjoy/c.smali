.class final Lcom/tapjoy/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/DownloadVirtualGood;


# direct methods
.method constructor <init>(Lcom/tapjoy/DownloadVirtualGood;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/c;->a:Lcom/tapjoy/DownloadVirtualGood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/h;->e:Z

    :cond_0
    return-void
.end method
