.class final Lcom/thinkyeah/smartlock/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/SettingHelpActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/SettingHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dw;->a:Lcom/thinkyeah/smartlock/SettingHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dw;->a:Lcom/thinkyeah/smartlock/SettingHelpActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SettingHelpActivity;->finish()V

    return-void
.end method
