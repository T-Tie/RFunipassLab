; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkljy3bak.cpp"
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
  %a = alloca [100 x [100 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull %a) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv20 = phi i32 [ %indvars.iv.next21, %while.cond ], [ -1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i8]], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 101, i8 noundef signext 32)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next21 = add nsw i32 %indvars.iv20, 1
  br i1 %call1, label %while.cond, label %for.cond.preheader, !llvm.loop !9

for.cond.preheader:                               ; preds = %while.cond
  %sub = shl i64 %indvars.iv, 32
  %sext = add i64 %sub, -4294967296
  %idxprom2 = ashr exact i64 %sext, 32
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv12 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next13, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv12, 100
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body

for.cond14.preheader:                             ; preds = %for.cond
  %sext23 = shl i64 %indvars.iv, 32
  %0 = ashr exact i64 %sext23, 32
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv20, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom2, i64 %indvars.iv12
  %1 = load i8, ptr %arrayidx5, align 1, !tbaa !12, !invariant.load !8
  %cmp6 = icmp eq i8 %1, 0
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %2 = add nsw i64 %indvars.iv12, -1
  %arrayidx12 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom2, i64 %2
  store i8 0, ptr %arrayidx12, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond, !llvm.loop !14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv16 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next17, %for.inc25 ]
  %exitcond22.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond22.not, label %for.end27, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %3 = xor i64 %indvars.iv16, -1
  %4 = add nsw i64 %0, %3
  %arrayidx21 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %4
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx21)
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call23, i8 noundef signext 32)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond14, !llvm.loop !15

for.end27:                                        ; preds = %for.cond14
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a)
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"omnipotent char", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
