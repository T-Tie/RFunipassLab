; ModuleID = '<stdin>'
source_filename = "/tmp/tmpivsmqnhl.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %zb = alloca [100 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %zb) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = phi i32 [ %3, %for.inc19 ], [ %.pre, %entry ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc19 ], [ 0, %entry ]
  %k.0 = phi i32 [ %k.1, %for.inc19 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv4, %1
  br i1 %cmp, label %for.cond1.preheader, label %for.end21

for.cond1.preheader:                              ; preds = %for.cond
  %2 = trunc nuw nsw i64 %indvars.iv4 to i32
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %3 = phi i32 [ %0, %for.cond1.preheader ], [ %.pre7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %k.1 = phi i32 [ %k.0, %for.cond1.preheader ], [ %k.2, %for.inc ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc19

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %cmp11 = icmp eq i32 %5, 0
  br i1 %cmp11, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %idxprom12 = sext i32 %k.1 to i64
  %arrayidx13 = getelementptr inbounds [100 x [2 x i32]], ptr %zb, i64 0, i64 %idxprom12
  store i32 %2, ptr %arrayidx13, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arrayidx13, i64 4
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %6, ptr %arrayidx17, align 4, !tbaa !5
  %inc = add nsw i32 %k.1, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %k.2 = phi i32 [ %inc, %if.then ], [ %k.1, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre7 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !10

for.inc19:                                        ; preds = %for.cond1
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond, !llvm.loop !13

for.end21:                                        ; preds = %for.cond
  %sub = add nsw i32 %k.0, -1
  %idxprom22 = sext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds [100 x [2 x i32]], ptr %zb, i64 0, i64 %idxprom22
  %7 = load i32, ptr %arrayidx23, align 8, !tbaa !5, !invariant.load !9
  %8 = load i32, ptr %zb, align 16, !tbaa !5
  %9 = xor i32 %8, -1
  %sub28 = add i32 %7, %9
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 4
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !9
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %zb, i64 4
  %11 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %12 = xor i32 %11, -1
  %sub36 = add i32 %10, %12
  %mul = mul nsw i32 %sub36, %sub28
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %mul)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call37, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %zb) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!13 = distinct !{!13, !11, !12}
