; ModuleID = '<stdin>'
source_filename = "/tmp/tmpduwhlycr.cpp"
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
  %a = alloca [15 x double], align 16
  %num = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %num) #4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup11, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc36, %for.cond.cleanup11 ]
  %exitcond24.not = icmp eq i32 %n.0, 100000
  br i1 %exitcond24.not, label %cleanup, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %num)
  %0 = load double, ptr %num, align 8, !tbaa !5
  %cmp4 = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp4, label %for.end, label %if.else

if.else:                                          ; preds = %for.body3
  %arrayidx = getelementptr inbounds nuw [15 x double], ptr %a, i64 0, i64 %indvars.iv
  store double %0, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1
  %1 = load double, ptr %a, align 16, !tbaa !5
  %cmp6 = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp6, label %cleanup, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.end
  %wide.trip.count22 = and i64 %indvars.iv, 4294967295
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.cond.cleanup16
  %indvars.iv19 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next20, %for.cond.cleanup16 ]
  %cnt.0 = phi double [ 0.000000e+00, %for.cond9.preheader ], [ %cnt.1, %for.cond.cleanup16 ]
  %exitcond23.not = icmp eq i64 %indvars.iv19, %wide.trip.count22
  br i1 %exitcond23.not, label %for.cond.cleanup11, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond9
  %arrayidx19 = getelementptr inbounds nuw [15 x double], ptr %a, i64 0, i64 %indvars.iv19
  %2 = load double, ptr %arrayidx19, align 8, !tbaa !5
  br label %for.cond13

for.cond.cleanup11:                               ; preds = %for.cond9
  %call.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %cnt.0)
  %vtable.i = load ptr, ptr %call.i11, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i11, i64 %vbase.offset.i
  %call.i13 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call.i11, i8 noundef signext %call.i13)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc36 = add nuw nsw i32 %n.0, 1
  br label %for.cond, !llvm.loop !14

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body17
  %indvars.iv15 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next16, %for.body17 ]
  %cnt.1 = phi double [ %cnt.0, %for.cond13.preheader ], [ %cnt.2, %for.body17 ]
  %exitcond18.not = icmp eq i64 %indvars.iv15, %wide.trip.count22
  br i1 %exitcond18.not, label %for.cond.cleanup16, label %for.body17

for.cond.cleanup16:                               ; preds = %for.cond13
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond9, !llvm.loop !15

for.body17:                                       ; preds = %for.cond13
  %arrayidx21 = getelementptr inbounds nuw [15 x double], ptr %a, i64 0, i64 %indvars.iv15
  %3 = load double, ptr %arrayidx21, align 8, !tbaa !5
  %mul = fmul double %3, 2.000000e+00
  %cmp22 = fcmp oeq double %2, %mul
  %inc24 = fadd double %cnt.1, 1.000000e+00
  %cnt.2 = select i1 %cmp22, double %inc24, double %cnt.1
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond13, !llvm.loop !16

cleanup:                                          ; preds = %for.end, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %num) #4
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
