.class public final LjQaa7YP/X8ZGZLi5l5;
.super Ljava/lang/Object;
.source "JUST_GIVE_IT_UP"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    move-object v3, p2

    move-object v1, p1

    move-object v4, p0

    :goto_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_1
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v7, v2

    sub-int/2addr v7, v10

    new-array v7, v7, [Ljava/lang/StackTraceElement;

    array-length v8, v7

    invoke-static {v2, v10, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x0

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x3

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    const/16 v2, 0x5

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Landroid/content/pm/PackageManager;

    aget-object v2, v3, v9

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, LjQaa7YP/GLtqH7G;->jvplHMIPX7FkuI(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x6

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, v3, v10

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v2, 0x2

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v1, Landroid/content/pm/PackageManager;

    aget-object v2, v3, v9

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, v5}, LjQaa7YP/GLtqH7G;->Osaa35GMvWmleJ6PA(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v1, v5, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_4

    invoke-static {}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk()[Landroid/content/pm/Signature;

    move-result-object v4

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v1, v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    invoke-static {v4, v9, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x7

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    move-object v1, v2

    goto/16 :goto_2

    :cond_5
    const/16 v2, 0x9

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast v1, Landroid/content/pm/PackageManager;

    aget-object v2, v3, v9

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, LjQaa7YP/GLtqH7G;->NmniUdcojMgZKeg(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    const/16 v2, 0xa

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    aget-object v2, v3, v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast v1, Landroid/content/pm/PackageManager;

    aget-object v2, v3, v9

    check-cast v2, Ljava/lang/String;

    aget-object v3, v3, v10

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, LjQaa7YP/GLtqH7G;->orahr3JDbv4FK(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    check-cast v1, Landroid/content/pm/PackageManager;

    aget-object v2, v3, v9

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v3, v10

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v4, v2}, LjQaa7YP/GLtqH7G;->orahr3JDbv4FK(Landroid/content/pm/PackageManager;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0xb

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v1, v11

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0xd

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v1, v11

    goto/16 :goto_2

    :cond_a
    const/16 v2, 0xe

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0xf

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v0, v1

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    invoke-static {v2}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x10

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, LjQaa7YP/GLtqH7G;->AeNLHymZsDWKEF(Ljava/io/File;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    const/16 v2, 0x11

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, LjQaa7YP/GLtqH7G;->lHuQNCOzocLJ(Ljava/io/File;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_2

    :cond_d
    const/16 v2, 0x12

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x13

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, LjQaa7YP/GLtqH7G;->xEM46JJIMwzVXE(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto/16 :goto_2

    :cond_e
    const/16 v2, 0x14

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x15

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, LjQaa7YP/GLtqH7G;->HWe5FABzh477cj3A7()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :cond_f
    const/16 v2, 0x16

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x17

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x18

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    check-cast v1, Ljava/lang/reflect/Method;

    aget-object v4, v3, v9

    aget-object v2, v3, v10

    check-cast v2, [Ljava/lang/Object;

    move-object v3, v2

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2
.end method
