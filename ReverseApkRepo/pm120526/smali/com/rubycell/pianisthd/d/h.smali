.class public final Lcom/rubycell/pianisthd/d/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->E:Ljava/lang/String;

    sget-object v1, Lcom/rubycell/pianisthd/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->E:Ljava/lang/String;

    sget-object v1, Lcom/rubycell/pianisthd/d/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/OptionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->E:Ljava/lang/String;

    sget-object v1, Lcom/rubycell/pianisthd/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->E:Ljava/lang/String;

    sget-object v1, Lcom/rubycell/pianisthd/d/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/Option3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/Setting3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
