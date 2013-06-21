.class final Lcom/rubycell/pianisthd/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rubycell/pianisthd/b/a;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SettingActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ap;->a:Lcom/rubycell/pianisthd/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ap;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/MySeekBar;->b()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->z:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/ap;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VIBRATE_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method
