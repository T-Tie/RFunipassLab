; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqxreubj9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12compose_wordPA25_ci(ptr noundef %word, i32 noundef %number) local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #7
  %conv = trunc i64 %call to i32
  %0 = sext i32 %number to i64
  %1 = add nsw i64 %0, -1
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %len.0 = phi i32 [ %conv, %entry ], [ %len.1, %while.end ]
  %i.0 = phi i32 [ 0, %entry ], [ %i.2, %while.end ]
  %cmp = icmp slt i32 %i.0, %number
  br i1 %cmp, label %while.cond.preheader, label %for.end

while.cond.preheader:                             ; preds = %for.cond
  %2 = sext i32 %i.0 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end10
  %indvars.iv = phi i64 [ %2, %while.cond.preheader ], [ %indvars.iv.next, %if.end10 ]
  %count.1 = phi i32 [ 0, %while.cond.preheader ], [ %add6, %if.end10 ]
  %len.1 = phi i32 [ %len.0, %while.cond.preheader ], [ %conv15, %if.end10 ]
  %tobool.not = phi i1 [ true, %while.cond.preheader ], [ false, %if.end10 ]
  %add = add nsw i32 %len.1, %count.1
  %cmp1 = icmp slt i32 %add, 80
  br i1 %cmp1, label %while.body, label %while.end.split.loop.exit27

while.body:                                       ; preds = %while.cond
  br i1 %tobool.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %3 = load i64, ptr %gep, align 8, !tbaa !10
  %cmp.not.i = icmp eq i64 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %inc = add nsw i32 %count.1, 1
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %while.body, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %count.2 = phi i32 [ %inc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %count.1, %while.body ]
  %arrayidx3 = getelementptr inbounds [25 x i8], ptr %word, i64 %indvars.iv
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx3) #8
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx3, i64 noundef %call.i.i)
  %exitcond.not = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond.not, label %while.end, label %if.end10

if.end10:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %add6 = add nsw i32 %count.2, %len.1
  %arrayidx12 = getelementptr inbounds [25 x i8], ptr %word, i64 %indvars.iv.next
  %call14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #7
  %conv15 = trunc i64 %call14 to i32
  br label %while.cond, !llvm.loop !22

while.end.split.loop.exit27:                      ; preds = %while.cond
  %4 = trunc nsw i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %while.end.split.loop.exit27
  %i.2 = phi i32 [ %4, %while.end.split.loop.exit27 ], [ %number, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %vtable.i20 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %vbase.offset.ptr.i21 = getelementptr i8, ptr %vtable.i20, i64 -24
  %vbase.offset.i22 = load i64, ptr %vbase.offset.ptr.i21, align 8
  %add.ptr.i23 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i22
  %call.i24 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i23, i8 noundef signext 10)
  %call1.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i24)
  %call.i.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i25)
  %cmp17.not = icmp slt i32 %i.2, %number
  br i1 %cmp17.not, label %for.cond, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %while.end, %for.cond
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %number = alloca i32, align 4
  %word = alloca [1000 x [25 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %number) #8
  store i32 0, ptr %number, align 4, !tbaa !26
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %number)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !27
  %call.i = call i32 @getc(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 25000, ptr nonnull %word) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25000) %word, i8 0, i64 25000, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i32, ptr %number, align 4, !tbaa !26
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [25 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  call void @_Z12compose_wordPA25_ci(ptr noundef nonnull %word, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 25000, ptr nonnull %word) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %number) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !6, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !12, i64 8}
!18 = !{!"int", !6, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = !{!18, !18, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!29 = distinct !{!29, !23, !24}
