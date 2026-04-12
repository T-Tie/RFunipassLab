; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkcar7ew1.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3lenPc(ptr noundef readonly captures(none) %word) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.else, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 81
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %word, i64 %indvars.iv
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %for.end.split.loop.exit, label %if.else

if.else:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end.split.loop.exit:                          ; preds = %for.body
  %indvars6.le = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond, %for.end.split.loop.exit
  %count.0.lcssa = phi i32 [ %indvars6.le, %for.end.split.loop.exit ], [ 81, %for.cond ]
  ret i32 %count.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %word = alloca [81 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %word) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81) %word, i8 0, i64 81, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  store i32 0, ptr %n, align 4, !tbaa !11
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %word)
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %word, i64 noundef %call.i.i)
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.else.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.else.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 81
  br i1 %exitcond.not.i, label %for.cond.preheader, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %word, i64 %indvars.iv.i
  %0 = load i8, ptr %add.ptr.i, align 1, !tbaa !5
  %cmp1.i = icmp eq i8 %0, 0
  br i1 %cmp1.i, label %for.end.split.loop.exit.i, label %if.else.i

if.else.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !8

for.end.split.loop.exit.i:                        ; preds = %for.body.i
  %indvars6.le.i = trunc i64 %indvars.iv.i to i32
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.i, %for.end.split.loop.exit.i
  %num.0.in.ph = phi i32 [ %indvars6.le.i, %for.end.split.loop.exit.i ], [ 81, %for.cond.i ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %num.0.in = phi i32 [ %num.1.in, %for.inc ], [ %num.0.in.ph, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %for.inc ], [ 2, %for.cond.preheader ]
  %num.0 = add nsw i32 %num.0.in, 1
  %1 = load i32, ptr %n, align 4, !tbaa !11
  %cmp.not = icmp sgt i32 %i.0, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %word)
  br label %for.cond.i3

for.cond.i3:                                      ; preds = %if.else.i9, %for.body
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i10, %if.else.i9 ], [ 0, %for.body ]
  %exitcond.not.i5 = icmp eq i64 %indvars.iv.i4, 81
  br i1 %exitcond.not.i5, label %_Z3lenPc.exit14, label %for.body.i6

for.body.i6:                                      ; preds = %for.cond.i3
  %add.ptr.i7 = getelementptr inbounds nuw i8, ptr %word, i64 %indvars.iv.i4
  %2 = load i8, ptr %add.ptr.i7, align 1, !tbaa !5
  %cmp1.i8 = icmp eq i8 %2, 0
  br i1 %cmp1.i8, label %for.end.split.loop.exit.i11, label %if.else.i9

if.else.i9:                                       ; preds = %for.body.i6
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i4, 1
  br label %for.cond.i3, !llvm.loop !8

for.end.split.loop.exit.i11:                      ; preds = %for.body.i6
  %indvars6.le.i12 = trunc i64 %indvars.iv.i4 to i32
  br label %_Z3lenPc.exit14

_Z3lenPc.exit14:                                  ; preds = %for.cond.i3, %for.end.split.loop.exit.i11
  %count.0.lcssa.i13 = phi i32 [ %indvars6.le.i12, %for.end.split.loop.exit.i11 ], [ 81, %for.cond.i3 ]
  %add11 = add nsw i32 %count.0.lcssa.i13, %num.0
  %cmp12 = icmp sgt i32 %add11, 80
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %_Z3lenPc.exit14
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i50 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i51 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i50, i8 noundef signext 10)
  %call1.i52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i51)
  %call.i.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i52)
  %call.i.i16 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #7
  %call1.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %word, i64 noundef %call.i.i16)
  br label %for.cond.i19

for.cond.i19:                                     ; preds = %if.else.i25, %if.then
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i26, %if.else.i25 ], [ 0, %if.then ]
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.i20, 81
  br i1 %exitcond.not.i21, label %for.inc, label %for.body.i22

for.body.i22:                                     ; preds = %for.cond.i19
  %add.ptr.i23 = getelementptr inbounds nuw i8, ptr %word, i64 %indvars.iv.i20
  %3 = load i8, ptr %add.ptr.i23, align 1, !tbaa !5
  %cmp1.i24 = icmp eq i8 %3, 0
  br i1 %cmp1.i24, label %for.end.split.loop.exit.i27, label %if.else.i25

if.else.i25:                                      ; preds = %for.body.i22
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i20, 1
  br label %for.cond.i19, !llvm.loop !8

for.end.split.loop.exit.i27:                      ; preds = %for.body.i22
  %indvars6.le.i28 = trunc i64 %indvars.iv.i20 to i32
  br label %for.inc

if.else:                                          ; preds = %_Z3lenPc.exit14
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %call.i.i35 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #7
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %word, i64 noundef %call.i.i35)
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %if.else.i44, %if.else
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i45, %if.else.i44 ], [ 0, %if.else ]
  %exitcond.not.i40 = icmp eq i64 %indvars.iv.i39, 81
  br i1 %exitcond.not.i40, label %_Z3lenPc.exit49, label %for.body.i41

for.body.i41:                                     ; preds = %for.cond.i38
  %add.ptr.i42 = getelementptr inbounds nuw i8, ptr %word, i64 %indvars.iv.i39
  %4 = load i8, ptr %add.ptr.i42, align 1, !tbaa !5
  %cmp1.i43 = icmp eq i8 %4, 0
  br i1 %cmp1.i43, label %for.end.split.loop.exit.i46, label %if.else.i44

if.else.i44:                                      ; preds = %for.body.i41
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i39, 1
  br label %for.cond.i38, !llvm.loop !8

for.end.split.loop.exit.i46:                      ; preds = %for.body.i41
  %indvars6.le.i47 = trunc i64 %indvars.iv.i39 to i32
  br label %_Z3lenPc.exit49

_Z3lenPc.exit49:                                  ; preds = %for.cond.i38, %for.end.split.loop.exit.i46
  %count.0.lcssa.i48 = phi i32 [ %indvars6.le.i47, %for.end.split.loop.exit.i46 ], [ 81, %for.cond.i38 ]
  %add24 = add nsw i32 %count.0.lcssa.i48, %num.0
  br label %for.inc

for.inc:                                          ; preds = %for.cond.i19, %for.end.split.loop.exit.i27, %_Z3lenPc.exit49
  %num.1.in = phi i32 [ %add24, %_Z3lenPc.exit49 ], [ %indvars6.le.i28, %for.end.split.loop.exit.i27 ], [ 81, %for.cond.i19 ]
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %word) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = distinct !{!15, !9, !10}
