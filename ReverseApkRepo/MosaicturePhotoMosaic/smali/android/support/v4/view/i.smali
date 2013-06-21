.class public abstract Landroid/support/v4/view/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/DataSetObservable;


# virtual methods
.method public abstract a()I
.end method

.method final a(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/i;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method final b(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/i;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b()Z
.end method
