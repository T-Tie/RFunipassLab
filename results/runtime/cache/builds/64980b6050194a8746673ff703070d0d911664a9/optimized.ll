; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj6wz5ta3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7ifsushui(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %return, label %for.cond

for.cond:                                         ; preds = %entry, %if.end
  %f.0.in = phi i32 [ %f.0, %if.end ], [ %n, %entry ]
  %f.0 = add nsw i32 %f.0.in, -1
  %cmp1 = icmp sgt i32 %f.0.in, 2
  br i1 %cmp1, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %f.0
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %for.body
  %cmp4 = icmp eq i32 %f.0, 2
  br i1 %cmp4, label %return, label %for.cond, !llvm.loop !5

return:                                           ; preds = %for.cond, %for.body, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 0, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable
define dso_local noundef i32 @_Z10zhaoyinshuii(i32 noundef %x, i32 noundef %max) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %x, 1
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @sum, align 4, !tbaa !8
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @sum, align 4, !tbaa !8
  ret i32 0

for.cond:                                         ; preds = %entry, %for.inc
  %i.0 = phi i32 [ %dec, %for.inc ], [ %max, %entry ]
  %cmp1 = icmp sgt i32 %i.0, 1
  tail call void @llvm.assume(i1 %cmp1)
  %rem = srem i32 %x, %i.0
  %div = sdiv i32 %x, %i.0
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.cond
  %call = tail call noundef i32 @_Z10zhaoyinshuii(i32 noundef %div, i32 noundef %i.0)
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then3
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !12
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %time = alloca i32, align 4
  %number = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %number) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %time)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %time, align 4, !tbaa !8
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %number) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #7
  ret i32 0

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %number)
  %1 = load i32, ptr %number, align 4, !tbaa !8
  %call2 = call noundef i32 @_Z7ifsushui(i32 noundef %1)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i3 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i3)
  %call.i.i5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i4)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %div = sdiv i32 %1, 2
  %call6 = call noundef i32 @_Z10zhaoyinshuii(i32 noundef %1, i32 noundef %div)
  %2 = load i32, ptr @sum, align 4, !tbaa !8
  %add = add nsw i32 %2, 1
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add)
  %vtable.i6 = load ptr, ptr %call7, align 8, !tbaa !13
  %vbase.offset.ptr.i7 = getelementptr i8, ptr %vtable.i6, i64 -24
  %vbase.offset.i8 = load i64, ptr %vbase.offset.ptr.i7, align 8
  %add.ptr.i9 = getelementptr inbounds i8, ptr %call7, i64 %vbase.offset.i8
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i9, i8 noundef signext 10)
  %call1.i10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call7, i8 noundef signext %call.i)
  %call.i.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i10)
  store i32 0, ptr @sum, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !15
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !11, i64 0}
!15 = distinct !{!15, !6, !7}
