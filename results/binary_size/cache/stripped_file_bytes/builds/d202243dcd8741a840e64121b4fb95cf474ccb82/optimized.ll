; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgub9m9w1.cpp"
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
  %__c.addr.i26 = alloca i8, align 1
  %__c.addr.i13 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %yw = alloca [150 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %yw) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(150) %yw, i8 0, i64 150, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %yw, i64 noundef 100, i8 noundef signext 10)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %yw) #7
  %conv = trunc i64 %call2 to i32
  %sub = add nsw i32 %conv, -1
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ %conv, %entry ], [ %dec, %for.inc25 ]
  %s.0 = phi i32 [ %sub, %entry ], [ %s.1, %for.inc25 ]
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %0 = zext nneg i32 %i.0 to i64
  %arrayidx = getelementptr inbounds nuw [150 x i8], ptr %yw, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp4 = icmp eq i8 %1, 32
  br i1 %cmp4, label %for.cond5, label %if.end

for.cond5:                                        ; preds = %for.body, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %0, %for.body ]
  %2 = trunc nuw i64 %indvars.iv to i32
  %cmp6.not.not = icmp sgt i32 %s.0, %2
  br i1 %cmp6.not.not, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx9 = getelementptr inbounds nuw [150 x i8], ptr %yw, i64 0, i64 %indvars.iv.next
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %3, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %4 = load i64, ptr %gep, align 8, !tbaa !10
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body7
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %3)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.cond5, !llvm.loop !22

for.end:                                          ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i13)
  store i8 32, ptr %__c.addr.i13, align 1, !tbaa !5
  %vtable.i14 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %vbase.offset.ptr.i15 = getelementptr i8, ptr %vtable.i14, i64 -24
  %vbase.offset.i16 = load i64, ptr %vbase.offset.ptr.i15, align 8
  %gep40 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i16
  %5 = load i64, ptr %gep40, align 8, !tbaa !10
  %cmp.not.i19 = icmp eq i64 %5, 0
  br i1 %cmp.not.i19, label %if.end.i23, label %if.then.i20

if.then.i20:                                      ; preds = %for.end
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i13, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

if.end.i23:                                       ; preds = %for.end
  %call2.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25: ; preds = %if.then.i20, %if.end.i23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i13)
  %sub12 = add nsw i32 %i.0, -1
  br label %if.end

if.end:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25, %for.body
  %s.1 = phi i32 [ %sub12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25 ], [ %s.0, %for.body ]
  %cmp13 = icmp eq i32 %i.0, 0
  br i1 %cmp13, label %for.cond15.preheader, label %for.inc25

for.cond15.preheader:                             ; preds = %if.end
  %smax = call i32 @llvm.smax.i32(i32 %s.1, i32 -1)
  %6 = add nsw i32 %smax, 1
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38
  %indvars.iv42 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next43, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38 ]
  %exitcond = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond, label %for.inc25, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw [150 x i8], ptr %yw, i64 0, i64 %indvars.iv42
  %7 = load i8, ptr %arrayidx19, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i26)
  store i8 %7, ptr %__c.addr.i26, align 1, !tbaa !5
  %vtable.i27 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %vbase.offset.ptr.i28 = getelementptr i8, ptr %vtable.i27, i64 -24
  %vbase.offset.i29 = load i64, ptr %vbase.offset.ptr.i28, align 8
  %gep39 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i29
  %8 = load i64, ptr %gep39, align 8, !tbaa !10
  %cmp.not.i32 = icmp eq i64 %8, 0
  br i1 %cmp.not.i32, label %if.end.i36, label %if.then.i33

if.then.i33:                                      ; preds = %for.body17
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i26, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38

if.end.i36:                                       ; preds = %for.body17
  %call2.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38: ; preds = %if.then.i33, %if.end.i36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i26)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond15, !llvm.loop !25

for.inc25:                                        ; preds = %for.cond15, %if.end
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !26

for.end26:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %yw) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!26 = distinct !{!26, !23, !24}
