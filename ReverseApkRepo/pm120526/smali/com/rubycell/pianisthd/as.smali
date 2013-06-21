.class final Lcom/rubycell/pianisthd/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SettingActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/as;->a:Lcom/rubycell/pianisthd/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/pianisthd/as;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v1, p0, Lcom/rubycell/pianisthd/as;->a:Lcom/rubycell/pianisthd/SettingActivity;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/SettingActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
