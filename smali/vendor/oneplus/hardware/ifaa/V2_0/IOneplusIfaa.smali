.class public interface abstract Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;
.super Ljava/lang/Object;
.source "IOneplusIfaa.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$Proxy;,
        Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$sendCommandCallback;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.oneplus.hardware.ifaa@2.0::IOneplusIfaa"

    .line 21
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    instance-of v3, v2, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    return-object v2

    .line 27
    :cond_1
    new-instance v2, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$Proxy;

    invoke-direct {v2, p0}, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    :try_start_0
    invoke-interface {v2}, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService()Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    .line 80
    invoke-static {v0}, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;->getService(Ljava/lang/String;)Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.oneplus.hardware.ifaa@2.0::IOneplusIfaa"

    .line 73
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(Ljava/util/ArrayList;ILvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$sendCommandCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$sendCommandCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
