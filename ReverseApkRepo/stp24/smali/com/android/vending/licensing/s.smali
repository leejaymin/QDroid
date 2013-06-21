.class public final Lcom/android/vending/licensing/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/android/vending/licensing/p;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/android/vending/licensing/p;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/vending/licensing/s;->a:Landroid/content/SharedPreferences;

    .line 41
    iput-object p2, p0, Lcom/android/vending/licensing/s;->b:Lcom/android/vending/licensing/p;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/licensing/s;->c:Landroid/content/SharedPreferences$Editor;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vending/licensing/s;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/vending/licensing/s;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/licensing/s;->c:Landroid/content/SharedPreferences$Editor;

    .line 76
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/licensing/s;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/vending/licensing/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/licensing/s;->c:Landroid/content/SharedPreferences$Editor;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/vending/licensing/s;->b:Lcom/android/vending/licensing/p;

    invoke-interface {v0, p2}, Lcom/android/vending/licensing/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/vending/licensing/s;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/licensing/s;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/licensing/s;->b:Lcom/android/vending/licensing/p;

    invoke-interface {v1, v0}, Lcom/android/vending/licensing/p;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/vending/licensing/v; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 68
    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method
