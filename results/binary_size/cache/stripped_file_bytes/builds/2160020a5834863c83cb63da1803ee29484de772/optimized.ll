; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdhc_0y6o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #4
  store i32 0, ptr %N, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %if.end ]
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %cmp7 = icmp sgt i32 %j.0, 0
  br i1 %cmp7, label %for.cond6.preheader11, label %for.end35

for.cond6.preheader11:                            ; preds = %for.cond6.preheader
  %4 = zext nneg i32 %j.0 to i64
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = and i32 %5, -2147483647
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %5, ptr %arrayidx, align 4, !tbaa !5
  %inc.i = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %j.1 = phi i32 [ %inc.i, %if.then ], [ %j.0, %for.body ]
  br label %for.cond

for.cond6:                                        ; preds = %for.cond6.preheader11, %for.cond.cleanup13
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader11 ], [ %indvars.iv.next, %for.cond.cleanup13 ]
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond6, %if.end29
  %indvars.iv12 = phi i64 [ %indvars.iv, %for.cond6 ], [ %indvars.iv.next13, %if.end29 ]
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %cmp12 = icmp samesign ult i64 %indvars.iv.next13, %4
  br i1 %cmp12, label %for.body14, label %for.cond.cleanup13

for.cond.cleanup13:                               ; preds = %for.cond11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6

for.body14:                                       ; preds = %for.cond11
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !9
  %arrayidx18 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv.next13
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !9
  %cmp19 = icmp sgt i32 %7, %8
  br i1 %cmp19, label %if.then20, label %if.end29

if.then20:                                        ; preds = %for.body14
  store i32 %8, ptr %arrayidx16, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx18, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %for.body14
  br label %for.cond11, !llvm.loop !10

for.end35:                                        ; preds = %for.cond6.preheader
  %9 = load i32, ptr %vla, align 16, !tbaa !5
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #5
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
