.class final Lccc71/pmw/a/l;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2086
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2090
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 2092
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2095
    new-instance v1, Lccc71/pmw/a/m;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/a/m;-><init>(Lccc71/pmw/a/l;Lccc71/pmw/a/a;)V

    .line 2134
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 2135
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2137
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 2139
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2140
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/a/d;->a(Landroid/content/pm/PackageManager;)V

    .line 2144
    :cond_0
    :try_start_0
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 2146
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fn:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    :goto_0
    return-void

    .line 2151
    :catch_0
    move-exception v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fm:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2152
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2157
    :cond_1
    iput-boolean v3, v0, Lccc71/pmw/a/a;->a:Z

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " uninstalled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 2159
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2160
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/a/d;->a(Landroid/content/pm/PackageManager;)V

    .line 2164
    :cond_2
    :try_start_1
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 2166
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccc71/pmw/a/a;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2172
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2173
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2174
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2179
    :cond_3
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to uninstall app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 2183
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fk:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2184
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2188
    :cond_4
    iput-boolean v4, v0, Lccc71/pmw/a/a;->a:Z

    .line 2189
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " failed to uninstall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 2191
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2192
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2193
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
