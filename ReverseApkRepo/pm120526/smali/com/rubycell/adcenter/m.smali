.class final Lcom/rubycell/adcenter/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/m;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
